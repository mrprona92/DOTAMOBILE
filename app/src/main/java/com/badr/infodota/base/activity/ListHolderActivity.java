package com.badr.infodota.base.activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.SearchView;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.badr.infodota.BeanContainer;
import com.badr.infodota.R;
import com.badr.infodota.base.api.Constants;
import com.badr.infodota.base.configs.ScreenIDs;
import com.badr.infodota.base.dao.Helper;
import com.badr.infodota.base.fragment.SearchableFragment;
import com.badr.infodota.base.menu.fragment.MenuFragment;
import com.badr.infodota.base.service.LocalSpiceService;
import com.badr.infodota.base.service.LocalUpdateService;
import com.badr.infodota.base.task.UpdateLoadRequest;
import com.badr.infodota.base.util.UiUtils;
import com.badr.infodota.base.util.UpdateUtils;
import com.badr.infodota.cosmetic.fragment.CosmeticItemsList;
import com.badr.infodota.counter.fragment.CounterPickFilter;
import com.badr.infodota.hero.fragment.HeroesList;
import com.badr.infodota.item.fragment.ItemsList;
import com.badr.infodota.joindota.fragment.LeaguesGamesList;
import com.badr.infodota.news.fragment.NewsList;
import com.badr.infodota.player.fragment.PlayerGroupsHolder;
import com.badr.infodota.quiz.fragment.QuizTypeSelect;
import com.badr.infodota.stream.fragment.TwitchHolder;
import com.badr.infodota.trackdota.fragment.TrackdotaMain;
import com.octo.android.robospice.SpiceManager;
import com.octo.android.robospice.persistence.DurationInMillis;
import com.octo.android.robospice.persistence.exception.SpiceException;
import com.octo.android.robospice.request.listener.RequestListener;


import butterknife.BindColor;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

/**
 * User: ABadretdinov
 * Date: 15.01.14
 * Time: 14:27
 */
public class ListHolderActivity extends BaseActivity implements SearchView.OnQueryTextListener, AdapterView.OnItemSelectedListener, RequestListener<String> {
    int lastSelected = -1;

    LocalUpdateService localUpdateService = BeanContainer.getInstance().getLocalUpdateService();
    private SpiceManager mSpiceManager = new SpiceManager(LocalSpiceService.class);
    private boolean doubleBackToExitPressedOnce = false;
    protected final String TAG = getClass().getSimpleName();
    private Spinner navSpinner;

    @BindView(R.id.tabHero)
    LinearLayout tabHero;

    @BindView(R.id.tabConterPick)
    LinearLayout tabCounterPick;

    @BindView(R.id.tabQuiz)
    LinearLayout tabQuiz;

    @BindView(R.id.tabMenu)
    LinearLayout tabMenu;

    @BindView(R.id.lblTabHero)
    TextView lblTabHero;

    @BindView(R.id.lblTabCounterPick)
    TextView lblTabCounter;

    @BindView(R.id.lblTabQuiz)
    TextView lblTabQuiz;

    @BindView(R.id.lblTabMenu)
    TextView lblTabMenu;

    private ScreenIDs.ScreenTab mCurrentTab;


    @BindColor(R.color.cmn_white)
    int tabHighLightTextColor;


    @BindColor(R.color.ranking_bgr_row)
    int tabNormalTextColor;


    @Override
    protected void onStart() {
        ButterKnife.bind(this);

        if (!mSpiceManager.isStarted()) {
            mSpiceManager.start(getApplicationContext());
            final int currentVersion = localUpdateService.getVersion(this);
            if (currentVersion != Helper.DATABASE_VERSION) {
                mSpiceManager.execute(new UpdateLoadRequest(getApplicationContext()), this);
            }
        }
        super.onStart();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {

        setTheme(R.style.Infodota);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main_fragment_holder);

        mActionMenuView.setPresenter(new ActionMenuPresenter(this));

        MenuFragment.updateActivity(this);

        ActionBar bar = getSupportActionBar();
        bar.setDisplayShowTitleEnabled(false);
        bar.setDisplayShowHomeEnabled(false);

        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        preferences.edit().remove("mainMenuLastSelected").commit();
        UpdateUtils.checkNewVersion(this, false);

        navSpinner= (Spinner) mToolbar.findViewById(R.id.nav_spinner);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,
                R.layout.spinner_item, getResources().getStringArray(R.array.main_menu));
        adapter.setDropDownViewResource(R.layout.spinner_dropdown_item);
        navSpinner.setAdapter(adapter);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        int selected = prefs.getInt("mainMenuLastSelected", 0);
        navSpinner.setOnItemSelectedListener(this);
        navSpinner.setSelection(Math.min(selected, adapter.getCount() - 1));
        //не нужен AppRater.onAppLaunched(this);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu items for use in the action bar

        if(mFragmentDetails instanceof MenuFragment){
            Log.d("BINH", "onCreateOptionsMenu() called with: " + "menu = [" + menu + "]");
            navSpinner.setVisibility(View.VISIBLE);
        }else{
            navSpinner.setVisibility(View.GONE);
        }

        if(mFragmentDetails instanceof  HeroesList){
            mActionMenuView.setVisibility(View.GONE);
        }else{
            mActionMenuView.setVisibility(View.VISIBLE);
        }

        getMenuInflater().inflate(R.menu.search, menu);

        MenuItem searchItem = menu.findItem(R.id.action_search);
        SearchView searchView = (SearchView) MenuItemCompat.getActionView(searchItem);
        searchView.setQueryHint(getString(android.R.string.search_go));
        searchView.setOnQueryTextListener(this);



        return super.onCreateOptionsMenu(menu);
    }

    //public boolean isSearchViewVisible=false;
    public boolean onQueryTextChange(String textNew) {
        Fragment fragment = getSupportFragmentManager().findFragmentById(R.id.details);
        if (fragment instanceof SearchableFragment) {
            ((SearchableFragment) fragment).onTextSearching(textNew);
        }
        return true;
    }

    public boolean onQueryTextSubmit(String text) {

        return true;
    }

    @Override
    public void onBackPressed() {
        if (doubleBackToExitPressedOnce) {
            super.onBackPressed();
            return;
        }
        doubleBackToExitPressedOnce = true;
        Toast.makeText(this, getString(R.string.back_toast), Toast.LENGTH_SHORT).show();
        new Handler().postDelayed(new Runnable() {

            @Override
            public void run() {
                doubleBackToExitPressedOnce = false;
            }
        }, Constants.MILLIS_FOR_EXIT);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        if (!getResources().getBoolean(R.bool.is_tablet)) {
            if (getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE) {
                ((ViewGroup) mActionMenuView.getParent()).removeView(mActionMenuView);
                ((ViewGroup) findViewById(R.id.top_container)).addView(mActionMenuView);
                ((LinearLayout.LayoutParams) mActionMenuView.getLayoutParams()).weight = 1;
                ((LinearLayout.LayoutParams) mToolbar.getLayoutParams()).weight = 1;
            } else {
                ((ViewGroup) mActionMenuView.getParent()).removeView(mActionMenuView);
                ((ViewGroup) findViewById(R.id.main_view)).addView(mActionMenuView);
                ((LinearLayout.LayoutParams) mActionMenuView.getLayoutParams()).weight = 0;
                ((LinearLayout.LayoutParams) mToolbar.getLayoutParams()).weight = 0;
            }
        }
        mActionMenuView.onConfigurationChanged(newConfig);
        super.onConfigurationChanged(newConfig);
    }

    public void replaceFragment(Fragment details) {
        FragmentTransaction ft = getSupportFragmentManager().beginTransaction();
        ft.replace(R.id.details, details);
        ft.commitAllowingStateLoss();
    }

    private Fragment mFragmentDetails;


    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        if (lastSelected != position) {
            switch (position) {
                default:
                case 0:
                    mFragmentDetails = new HeroesList();
                    break;
                case 1:
                    mFragmentDetails = new ItemsList();
                    break;
                case 2:
                    mFragmentDetails = new PlayerGroupsHolder();
                    break;
                case 3:
                    mFragmentDetails = new CounterPickFilter();
                    break;
                case 4:
                    mFragmentDetails = new CosmeticItemsList();
                    break;
                case 5:
                    mFragmentDetails = new QuizTypeSelect();
                    break;
                case 6:
                    mFragmentDetails = new TwitchHolder();
                    break;
                case 7:
                    mFragmentDetails = new NewsList();
                    break;
                case 8:
                    mFragmentDetails = LeaguesGamesList.newInstance(null);
                    break;
                case 9:
                    mFragmentDetails = new TrackdotaMain();
                    break;
                    /*
                case 9:
					details=new LeaguesGamesList.newInstance("&c2=7057&c1=2390");
                    break;*/
            }
            replaceFragment(mFragmentDetails);
            lastSelected = position;
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
            prefs.edit().putInt("mainMenuLastSelected", lastSelected).commit();
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }

    @Override
    public void onRequestFailure(SpiceException spiceException) {
        AlertDialog.Builder dialog = new AlertDialog.Builder(ListHolderActivity.this);
        dialog.setTitle(getString(R.string.error_during_load));
        dialog.setMessage(spiceException.getLocalizedMessage());
        dialog.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                finish();
            }
        });
        dialog.show();
    }

    @Override
    public void onRequestSuccess(String s) {
        localUpdateService.setUpdated(ListHolderActivity.this);
    }


    //Tab Change
    @OnClick(R.id.tabHero)
    public void onClickTabHero() {
        openScreen(ScreenIDs.ScreenTab.HERO);
    }

    @OnClick(R.id.tabConterPick)
    public void onClickTabCounterPick() {
        openScreen(ScreenIDs.ScreenTab.COUNTERPICK);
    }

    @OnClick(R.id.tabQuiz)
    public void onClickTabQuiz() {
        openScreen(ScreenIDs.ScreenTab.QUIZ);
    }

    @OnClick(R.id.tabMenu)
    public void onClickTabMenu() {
        openScreen(ScreenIDs.ScreenTab.MENU);
    }

    public void openScreen(ScreenIDs.ScreenTab tab) {
        if (tab != mCurrentTab) {
            setHighLightTab(tab);
            int position = -1;
            switch (tab) {
                default:
                case HERO:
                    mFragmentDetails = new HeroesList();
                    position = 0;
                    break;
                case COUNTERPICK:
                    mFragmentDetails = new CounterPickFilter();
                    position = 1;
                    break;
                case QUIZ:
                    mFragmentDetails = new QuizTypeSelect();
                    position = 2;
                    break;
                case MENU:
                    mFragmentDetails = new MenuFragment();
                    position = 3;
                    break;
                    /*
                case 9:
					details=new LeaguesGamesList.newInstance("&c2=7057&c1=2390");
                    break;*/
            }
            replaceFragment(mFragmentDetails);
            mCurrentTab = tab;
            lastSelected = position;
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
            prefs.edit().putInt("mainMenuLastSelected", lastSelected).commit();
        }
    }


    private void setHighLightTab(ScreenIDs.ScreenTab tab) {
        android.util.Log.d(TAG, "setHighLightTab() called with: tab = [" + tab + "]");
        tabHero.setBackgroundResource(R.color.tabbar_normal);
        tabMenu.setBackgroundResource(R.color.tabbar_normal);
        tabCounterPick.setBackgroundResource(R.color.tabbar_normal);
        tabQuiz.setBackgroundResource(R.color.tabbar_normal);

       /* lblTabRanking.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab_ranking, 0, 0);
        lblTabMenu.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab_4, 0, 0);
        lblTabTradeFeed.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab_2, 0, 0);
        imgTradeSetting.setImageResource(R.drawable.ic_tab_3);*/

        lblTabHero.setTextColor(tabNormalTextColor);
        lblTabCounter.setTextColor(tabNormalTextColor);
        lblTabQuiz.setTextColor(tabNormalTextColor);
        lblTabMenu.setTextColor(tabNormalTextColor);

        switch (tab) {
            case HERO:
                tabHero.setBackgroundResource(R.color.tabbar_active);
                lblTabHero.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab1_hero, 0, 0);
                lblTabHero.setTextColor(tabHighLightTextColor);
                break;
            case COUNTERPICK:
                tabCounterPick.setBackgroundResource(R.color.tabbar_active);
                lblTabCounter.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab2_counterpick, 0, 0);
                lblTabCounter.setTextColor(tabHighLightTextColor);
                break;
            case QUIZ:
                tabQuiz.setBackgroundResource(R.color.tabbar_active);
                lblTabQuiz.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab3_quiz, 0, 0);
                lblTabQuiz.setTextColor(tabHighLightTextColor);
                break;
            case MENU:
                tabMenu.setBackgroundResource(R.color.tabbar_active);
                lblTabMenu.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.ic_tab4_menu, 0, 0);
                lblTabMenu.setTextColor(tabHighLightTextColor);
                break;
            default:
                tabHero.setBackgroundResource(R.color.tabbar_normal);
                tabCounterPick.setBackgroundResource(R.color.tabbar_normal);
                tabQuiz.setBackgroundResource(R.color.tabbar_normal);
                tabMenu.setBackgroundResource(R.color.tabbar_normal);
                break;
        }
    }

    public void onChangeFragment(int position) {
            switch (position) {
                default:
                case 0:
                    mFragmentDetails = new ItemsList();
                    break;
                case 1:
                    mFragmentDetails = new NewsList();
                    break;
                case 2:
                    mFragmentDetails =  LeaguesGamesList.newInstance(null);
                    break;
                case 3:
                    mFragmentDetails = new TrackdotaMain();
                    break;
                case 4:
                    mFragmentDetails = new TwitchHolder();
                    break;
                case 5:
                    UpdateUtils.checkNewVersion(ListHolderActivity.this, true);
                    break;
                case 6:
                    startActivity(new Intent(ListHolderActivity.this, AboutActivity.class));
                    break;
                case 7:
                    //TODO quit app
                    AlertDialog alertDialog = new AlertDialog.Builder(ListHolderActivity.this).create();
                    alertDialog.setTitle("Reset...");
                    alertDialog.setMessage("Do you want quit application?");
                    alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            android.os.Process.killProcess(android.os.Process.myPid());
                            System.exit(1);
                        } });
                    alertDialog.show();
                    break;
            }
            replaceFragment(mFragmentDetails);
    }


}
