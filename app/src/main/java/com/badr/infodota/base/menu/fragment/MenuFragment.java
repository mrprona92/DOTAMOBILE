package com.badr.infodota.base.menu.fragment;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.badr.infodota.R;
import com.badr.infodota.base.activity.ListHolderActivity;
import com.badr.infodota.base.menu.adapter.DHMenuAdapter;

import java.lang.ref.WeakReference;

import butterknife.BindView;

/**
 * User: Histler
 * Date: 09.02.14
 */
public class MenuFragment extends Fragment implements DHMenuAdapter.OnItemClickListener{

    private static WeakReference<ListHolderActivity> mActivityRef;

    public static void updateActivity(ListHolderActivity activity) {
        mActivityRef = new WeakReference<>(activity);
    }


    @BindView(R.id.recyclerMenu)
    RecyclerView mRecyclerMenu;

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        menu.clear();
        ActionMenuView actionMenuView = ((ListHolderActivity) getActivity()).getActionMenuView();
        Menu actionMenu = actionMenuView.getMenu();
        actionMenu.clear();
        actionMenuView.setVisibility(View.GONE);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        DHMenuAdapter adapterMenu = new DHMenuAdapter(getContext());
        mRecyclerMenu.setAdapter(adapterMenu);
        adapterMenu.setOnItemClickListener(this);
        mRecyclerMenu.setHasFixedSize(false);
        mRecyclerMenu.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
        mRecyclerMenu.setNestedScrollingEnabled(false);
        return inflater.inflate(R.layout.fragment_menu, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        setHasOptionsMenu(true);
        setConfiguration();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        setConfiguration();
    }

    private void setConfiguration() {
        if (getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE) {
            ((LinearLayout) getView().findViewById(R.id.buttonsHolder)).setOrientation(LinearLayout.HORIZONTAL);
        } else {
            ((LinearLayout) getView().findViewById(R.id.buttonsHolder)).setOrientation(LinearLayout.VERTICAL);
        }
    }

    @Override
    public void onClick(View view, int position) {
        mActivityRef.get().onChangeFragment(position);
    }

}
