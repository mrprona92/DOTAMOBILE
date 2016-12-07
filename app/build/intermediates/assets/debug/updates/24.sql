INSERT INTO hero_stats(_id,alignment,hp,range,attack_swing,armor,max_dmg,cast_point,int_gain,agi_gain,str_gain,day_vision,cast_swing,base_agi,night_vision,base_attack_time,hp_regen,primary_stat,min_dmg,mana,turnrate,base_str,attack_point,base_int,projectile_speed,mana_regen,movespeed,roles,legs,patch)
SELECT '1' as _id, '0' as alignment,'530' as hp,'128' as range,'0.6' as attack_swing,'2.08' as armor,'53' as max_dmg,'0.3' as cast_point,'1.8' as int_gain,'2.8' as agi_gain,'1.2' as str_gain, '1800' as day_vision,'0.47' as cast_swing,'22' as base_agi,'800' as night_vision,'1.45' as base_attack_time,'0.25' as hp_regen,'1' as primary_stat,'49' as min_dmg,'195' as mana, '0.5' as turnrate,'20' as base_str,'0.3' as attack_point,'15' as base_int,'0' as projectile_speed,'0.01' as mana_regen,'315' as movespeed,'Carry,Escape,' as roles,'1' as legs,'6.79c' as patch
UNION ALL SELECT '2','1','625','128','0.5','1.8','53','0.3','1.6','2.2','2.5','1800','0.51','20','800','1.7','3.0','0','49','234','0.6','25','0.5','18','0','0.01','290','Durable,Initiator,Disabler,Jungler,','2','6.80'
UNION ALL SELECT '3','1','568','400','0.7','3.52','57','0.5','2.1','2.1','2.1','1800','0.51','22','800','1.7','0.25','2','51','286','0.6','22','0.3','22','900','0.01','315','Disabler,Nuker,Support,','0','6.79c'
UNION ALL SELECT '4','1','587','128','0.74','3.36','59','0.6','1.7','3.0','2.0','1800','1.4','24','800','1.7','0.25','1','53','234','0.5','23','0.43','18','0','0.01','290','Carry,Jungler,','2','6.79c'
UNION ALL SELECT '5','0','454','600','0.0','1.24','44','0.3','2.9','1.6','1.7','1800','2.4','16','800','1.7','0.25','2','38','273','0.5','16','0.55','16','900','0.01','280','Support,Disabler,Nuker,Lane Support,','2','6.80'
UNION ALL SELECT '6','0','473','625','0.3','0.64','55','0.4','1.4','1.9','1.9','1800','0.5','26','800','1.7','0.25','1','44','195','0.6','17','0.7','15','1250','0.01','300','Carry,','2','6.79c'
UNION ALL SELECT '7','0','568','128','0.863','2.68','56','0.65','1.8','1.4','2.9','1800','0.5','12','800','1.7','0.25','0','46','208','0.9','22','0.467','16','0','0.01','310','Initiator,Disabler,Support,Lane Support,','2','6.81b'
UNION ALL SELECT '8','0','530','128','0.84','2.8','48','0.3','1.4','2.4','1.9','1800','0.51','26','800','1.4','0.75','1','44','182','0.6','20','0.33','14','0','0.01','305','Carry,Pusher,','2','6.79c'
UNION ALL SELECT '9','0','473','600','0.7','1.8','49','0.5','1.65','2.75','1.85','1800','0.83','20','800','1.7','0.25','1','38','221','0.4','17','0.3','17','900','0.01','300','Carry,Nuker,Disabler,Escape,','6','6.79c'
UNION ALL SELECT '11','1','435','500','0.54','1.8','41','0.67','2.0','2.9','2.0','1800','0.4','20','800','1.7','0.5','1','35','234','1.0','15','0.5','18','1200','0.01','305','Carry,Nuker,','0','6.79c'
UNION ALL SELECT '10','0','511','350','0.5','0.66','41','0.25','1.5','3.0','2.0','1800','0.51','24','800','1.6','0.25','1','32','221','0.6','19','0.5','17','1300','0.01','285','Carry,Escape,Initiator,Nuker,','0','6.79c'
UNION ALL SELECT '12','0','492','128','0.5','3.22','67','0.3','2.0','3.0','1.7','1800','0.51','29','800','1.7','0.75','1','45','273','0.6','21','0.5','21','0','0.01','290','Carry,Escape,Pusher,','2','6.79c'
UNION ALL SELECT '13','0','435','550','0.8','2.08','58','0.1','2.4','1.7','1.7','1800','0.51','22','800','1.7','0.25','2','47','312','0.4','15','0.5','24','900','0.01','295','Initiator,Nuker,Disabler,Escape,','0','6.79c'
UNION ALL SELECT '14','1','625','128','1.17','0.96','58','0.3','1.5','1.5','3.2','1800','0.51','14','800','1.7','0.25','0','52','182','0.5','25','0.7','14','0','0.01','285','Durable,Disabler,','2','6.79c'
UNION ALL SELECT '15','1','549','475','0.7','2.08','47','0.5','1.8','2.0','2.3','1800','0.125','22','800','1.7','0.25','1','45','247','0.4','21','0.3','19','2000','0.01','295','Carry,Durable,Nuker,','0','6.79c'
UNION ALL SELECT '16','1','492','128','0.47','2.66','59','0.0','1.8','2.1','2.6','1800','0.51','19','800','1.7','0.25','0','43','208','0.5','18','0.53','16','0','0.01','300','Initiator,Disabler,Nuker,','6','6.79c'
UNION ALL SELECT '17','0','511','480','0.3','5.08','55','0.3','2.6','1.8','1.5','1800','0.51','22','800','1.7','0.25','2','45','299','0.8','19','0.5','23','1100','0.01','285','Carry,Initiator,Escape,Disabler,','2','6.80'
UNION ALL SELECT '18','0','587','128','0.3','4.94','50','0.3','1.3','2.0','2.7','1800','0.51','21','800','1.7','0.25','0','48','182','0.6','23','0.4','14','0','0.01','295','Disabler,Initiator,Carry,Support,','2','6.79c'
UNION ALL SELECT '19','0','606','128','1.0','0.54','67','0.001','1.6','0.9','3.0','1800','0.0','9','800','1.7','0.25','0','61','182','0.5','24','0.49','14','0','0.01','285','Disabler,Nuker,Initiator,Durable,','2','6.79c'
UNION ALL SELECT '20','0','454','400','0.64','3.78','53','0.3','1.75','2.8','2.6','1800','0.51','27','800','1.7','0.25','1','39','195','0.6','18','0.33','15','1500','0.01','295','Support,Disabler,Lane Support,Initiator,','2','6.79c'
UNION ALL SELECT '21','0','435','600','0.3','1.38','56','0.3','2.6','1.4','2.5','1800','0.5','17','800','1.5','0.25','2','44','286','0.6','15','0.4','22','1250','0.01','295','Disabler,Nuker,Support,Escape,','2','6.79c'
UNION ALL SELECT '22','0','511','350','0.366','1.54','49','0.4','2.7','1.2','2.3','1800','0.5','11','800','1.7','0.25','2','41','260','0.6','19','0.633','20','1100','0.01','295','Nuker,Support,','2','6.79c'
UNION ALL SELECT '23','0','606','128','0.3','1.96','60','0.4','1.5','1.3','3.0','1800','0.51','14','800','1.7','0.25','0','50','234','0.6','24','0.4','18','0','0.01','300','Disabler,Initiator,Carry,Durable,','2','6.79c'
UNION ALL SELECT '25','0','492','670','0.78','1.24','58','0.45','3.2','1.5','1.5','1800','1.08','16','800','1.7','0.25','2','40','351','0.5','18','0.75','27','1000','0.01','295','Nuker,Disabler,Support,','0','6.79c'
UNION ALL SELECT '31','1','492','550','0.54','1.1','51','0.4','3.25','2.0','1.55','1800','1.1','15','800','1.7','0.25','2','42','234','0.5','18','0.46','18','900','0.01','315','Support,Lane Support,Nuker,','0','6.79c'
UNION ALL SELECT '26','1','454','600','0.74','1.1','55','0.3','3.0','1.5','1.7','1800','0.51','15','800','1.7','0.25','2','49','286','0.5','16','0.43','22','900','0.01','290','Disabler,Nuker,Lane Support,Support,','2','6.79c'
UNION ALL SELECT '27','0','511','500','0.5','1.24','54','0.3','3.0','1.6','1.8','1800','1.07','16','800','1.7','0.25','2','47','273','0.4','21','0.3','21','900','0.01','285','Pusher,Disabler,Nuker,Support,','2','6.79c'
UNION ALL SELECT '28','1','549','128','0.64','5.38','59','0.35','1.5','2.4','2.8','1800','0.51','17','800','1.7','0.25','0','51','195','0.5','21','0.36','15','0','0.01','300','Carry,Durable,Disabler,Initiator,','0','6.79c'
UNION ALL SELECT '29','1','568','128','0.56','3.1','53','0.3','1.7','1.5','3.0','1800','0.51','15','800','1.7','0.25','0','47','208','0.4','22','0.6','16','0','0.01','305','Initiator,Durable,Disabler,Support,','2','6.79c'
UNION ALL SELECT '30','1','454','600','0.5','0.82','61','0.35','2.9','1.4','1.8','1800','0.52','13','800','1.7','0.25','2','51','312','0.4','16','0.4','24','1200','0.01','305','Support,Disabler,','2','6.79c'
UNION ALL SELECT '32','0','473','128','0.3','5.76','42','0.4','1.3','2.9','2.0','1800','0.51','34','800','1.7','0.25','1','38','182','0.6','17','0.3','14','0','0.01','290','Carry,Escape,','2','6.80'
UNION ALL SELECT '33','1','473','500','0.77','3.96','48','0.3','3.4','1.0','2.1','1800','0.51','14','800','1.7','0.25','2','42','260','0.5','17','0.4','20','900','0.01','300','Disabler,Initiator,Jungler,Pusher,','0','6.79c'
UNION ALL SELECT '34','0','473','550','0.65','3.82','55','0.53','2.2','1.2','2.0','1800','0.5','13','800','1.7','0.25','2','49','351','0.6','17','0.35','27','900','0.01','305','Nuker,Pusher,','2','6.79c'
UNION ALL SELECT '35','0','454','550','0.7','1.94','42','0.3','2.6','2.5','1.7','1800','0.51','21','1000','1.7','0.25','1','36','195','0.6','16','0.17','15','3000','0.01','290','Carry,','2','6.79c'
UNION ALL SELECT '36','1','454','550','0.77','2.1','49','0.7','2.5','1.7','2.0','1800','0.8','15','800','1.7','0.25','2','45','286','0.5','16','0.4','22','900','0.01','290','Durable,Carry,','2','6.79c'
UNION ALL SELECT '37','1','492','600','0.3','2.4','56','0.5','2.7','1.0','2.5','1800','0.5','10','800','1.7','0.25','2','46','312','0.4','18','0.3','24','1200','0.01','295','Initiator,Support,Lane Support,Disabler,','2','6.79c'
UNION ALL SELECT '38','0','587','128','0.7','4.52','68','0.5','1.9','1.6','2.2','1800','0.5','18','800','1.7','0.25','0','64','208','0.4','23','0.3','16','0','0.01','310','Initiator,Disabler,Durable,','2','6.79c'
UNION ALL SELECT '39','1','454','550','0.41','1.52','57','0.452','2.5','2.0','1.7','1800','1.008','18','800','1.6','0.25','2','49','312','0.5','16','0.56','24','1500','0.01','295','Nuker,Escape,Carry,','2','6.79c'
UNION ALL SELECT '40','1','487','450','0.7','3.08','48','0.0','1.75','2.6','1.95','1800','0.51','22','800','1.7','0.25','1','46','234','0.4','18','0.3','18','900','0.01','285','Support,Nuker,Initiator,Pusher,','0','6.80'
UNION ALL SELECT '41','1','587','128','0.56','3.94','64','0.35','1.5','2.65','1.6','1800','0.51','23','800','1.7','0.25','1','58','195','1','23','0.5','15','0','0.01','300','Carry,Initiator,Disabler,Escape,','2','6.79c'
UNION ALL SELECT '42','1','568','128','0.44','2.52','56','0.35','1.6','1.7','2.9','1800','0.51','18','800','1.7','0.25','0','54','169','0.4','22','0.56','18','0','0.01','300','Durable,Carry,Disabler,','2','6.79c'
UNION ALL SELECT '43','1','511','600','0.51','2.96','56','0.5','3.0','1.4','1.9','1800','0.83','14','800','1.7','0.75','2','44','260','0.5','19','0.56','20','1000','0.01','280','Pusher,Nuker,Durable,','0','6.79c'
UNION ALL SELECT '44','1','530','128','0.7','4.22','48','0.3','1.0','3.15','1.85','1800','0.5','23','800','1.7','0.25','1','46','169','0.4','22','0.3','13','0','0.01','310','Carry,Escape,','2','6.79c'
UNION ALL SELECT '45','1','473','600','0.5','1.24','53','0.2','4.0','1.0','1.2','1800','0.51','16','800','1.7','0.25','2','45','338','0.5','17','0.5','26','900','0.01','320','Nuker,Pusher,Support,','2','6.79c'
UNION ALL SELECT '46','0','492','140','0.5','4.22','59','0.3','2.0','2.7','2.1','1800','0.51','23','800','1.7','0.25','1','53','260','0.7','18','0.3','20','900','0.01','305','Carry,Escape,','2','6.79c'
UNION ALL SELECT '47','1','530','575','1.0','1.94','46','0.3','1.8','2.5','1.9','1800','0.51','21','800','1.7','0.25','1','44','195','0.4','20','0.33','15','1200','0.01','285','Carry,Durable,','0','6.79c'
UNION ALL SELECT '48','0','435','330','0.54','4.08','54','0.6','1.85','2.8','1.9','1800','0.4','18','800','1.7','0.25','1','48','208','0.4','15','0.46','16','900','0.01','330','Carry,Nuker,','6','6.79c'
UNION ALL SELECT '49','0','511','128','0.5','3.66','52','0.0','1.7','2.2','2.8','1800','0.51','19','800','1.7','0.25','0','46','195','0.4','19','0.5','15','0','0.01','290','Carry,Durable,Disabler,Pusher,','2','6.79c'
UNION ALL SELECT '50','1','454','550','0.3','1.94','59','0.3','3.4','1.7','1.85','1800','0.5','21','800','1.7','0.25','2','41','351','0.6','16','0.3','27','1200','0.01','305','Support,Lane Support,','2','6.79c'
UNION ALL SELECT '51','0','606','128','0.64','1.82','57','0.3','1.3','2.3','2.7','1800','0.51','13','800','1.7','0.25','0','55','221','0.6','24','0.33','17','0','0.01','315','Initiator,Durable,','2','6.79c'
UNION ALL SELECT '52','1','454','600','0.77','3.22','49','0.7','3.0','1.7','1.5','1800','0.8','23','800','1.7','0.25','2','45','338','0.5','16','0.4','26','900','0.01','320','Nuker,Pusher,Disabler,Support,','4','6.79c'
UNION ALL SELECT '53','0','511','600','0.77','3.52','59','0.5','2.9','1.9','1.8','1800','1.17','18','800','1.7','0.25','2','45','273','0.6','19','0.4','21','1125','0.01','295','Jungler,Pusher,Carry,Escape,','2','6.79c'
UNION ALL SELECT '54','1','625','128','0.44','1.52','67','0.01','1.75','1.9','2.4','1800','0.01','18','800','1.7','0.25','0','57','195','1.0','25','0.39','15','0','0.01','315','Carry,Durable,Jungler,Escape,','2','6.79c'
UNION ALL SELECT '55','1','568','128','0.58','6.68','66','0.4','2.7','1.2','2.3','1800','0.67','12','800','1.7','0.25','2','60','377','0.6','22','0.59','29','0','0.01','300','Initiator,Nuker,Escape,','2','6.79c'
UNION ALL SELECT '56','1','435','630','0.3','2.08','43','0.5','1.55','3.0','1.6','1800','0.51','22','800','1.7','0.25','1','37','208','0.4','15','0.7','16','900','0.01','300','Carry,Escape,','2','6.79c'
UNION ALL SELECT '57','0','530','128','0.567','5.1','61','0.5','1.8','1.75','2.65','1800','1.67','15','800','1.7','0.25','0','51','221','0.6','20','0.433','17','0','0.01','305','Durable,Lane Support,Support,','2','6.79c'
UNION ALL SELECT '58','0','454','550','0.7','0.66','57','0.3','2.8','1.8','1.0','1800','0.51','19','800','1.7','0.25','2','47','208','0.4','16','0.3','16','900','0.01','335','Support,Pusher,Durable,Jungler,','4','6.80'
UNION ALL SELECT '59','0','549','400','0.5','1.8','51','0.3','1.5','1.4','2.4','1800','2.4','15','800','1.6','0.25','0','42','234','0.5','21','0.4','18','1400','0.01','300','Carry,Initiator,Durable,','2','6.79c'
UNION ALL SELECT '60','1','587','128','0.55','5.52','61','0.3','1.6','2.25','2.8','1200','0.3','18','1800','1.7','0.25','0','57','208','0.5','23','0.55','16','0','0.01','295','Durable,Initiator,','2','6.79c'
UNION ALL SELECT '61','1','473','128','0.5','2.52','50','0.2','2.0','2.2','2.5','1800','0.51','18','800','1.7','0.25','1','44','234','0.5','17','0.4','18','0','0.01','295','Pusher,Carry,Escape,','8','6.79c'
UNION ALL SELECT '62','0','473','128','0.59','5.94','59','0.3','2.0','3.0','1.8','1800','0.51','21','1000','1.7','0.75','1','45','247','0.6','17','0.6','19','0','0.01','315','Carry,Escape,Nuker,','2','6.79c'
UNION ALL SELECT '63','1','435','425','0.36','0.96','60','0.3','1.8','2.5','1.5','1800','0.51','14','800','1.8','0.25','1','50','195','0.5','15','0.64','15','900','0.01','290','Carry,Escape,','4','6.79c'
UNION ALL SELECT '64','0','606','400','0.5','2.4','54','0.65','2.8','1.2','2.3','1800','0.3','10','800','1.7','0.25','2','46','364','0.5','25','0.4','28','1100','0.01','290','Nuker,Pusher,Lane Support,Disabler,','0','6.79c'
UNION ALL SELECT '65','1','568','375','0.54','2.1','42','0.2','2.5','1.5','2.4','1400','0.7','15','800','1.7','0.25','2','38','312','1.0','23','0.4','24','900','0.01','290','Initiator,Disabler,Nuker,Escape,','0','6.79c'
UNION ALL SELECT '66','0','530','600','0.5','1.1','53','0.3','2.8','2.1','1.5','1800','0.51','15','800','1.7','0.25','2','48','273','0.6','20','0.5','21','1100','0.01','300','Support,Jungler,Pusher,','6','6.79c'
UNION ALL SELECT '67','1','511','128','0.7','3.22','50','0.3','1.9','2.2','2.0','1800','0.51','23','800','1.7','0.25','1','46','208','0.4','19','0.3','16','0','0.01','290','Carry,Durable,','0','6.79c'
UNION ALL SELECT '69','1','644','150','0.7','0.54','69','0.5','2.1','0.9','3.2','1800','0.51','11','800','1.7','0.25','0','53','169','0.5','26','0.5','13','0','0.01','290','Durable,Carry,Nuker,','2','6.79c'
UNION ALL SELECT '68','1','492','600','0.3','1.8','54','0.01','2.6','2.2','1.4','1800','0.75','20','800','1.7','0.25','2','44','325','0.6','18','0.45','25','1250','0.01','295','Support,Disabler,','0','6.79c'
UNION ALL SELECT '70','0','587','128','0.3','5.52','49','0.3','1.5','2.1','2.9','1800','0.0','18','800','1.7','0.25','1','45','208','0.5','23','0.3','16','0','0.01','310','Carry,Jungler,Durable,','2','6.79c'
UNION ALL SELECT '71','1','701','128','0.3','5.38','70','0.47','1.8','1.7','2.4','1800','0.8','17','800','1.7','0.75','0','60','182','0.4','29','0.6','14','0','0.01','290','Durable,Carry,Initiator,Disabler,','2','6.79c'
UNION ALL SELECT '72','0','492','365','0.97','4.36','51','0.3','2.1','2.8','1.8','1800','0.5','24','800','1.7','0.25','1','41','299','0.6','18','0.2','19','3000','0.01','315','Disabler,Initiator,Nuker,','0','6.79c'
UNION ALL SELECT '73','0','625','128','0.65','1.54','58','0.4','1.8','1.2','1.8','1800','0.5','11','800','1.7','0.25','0','49','325','0.6','25','0.35','25','0','0.01','295','Durable,Carry,Disabler,','4','6.80'
UNION ALL SELECT '74','1','511','600','0.7','1.8','41','0.0','3.2','1.9','1.7','1800','0.0','20','800','1.7','0.25','2','35','286','0.5','19','0.4','22','900','0.01','280','Carry,Nuker,Initiator,Escape,','2','6.79c'
UNION ALL SELECT '75','0','473','600','0.5','1.24','57','0.3','2.5','3','2.2','1800','0.51','16','800','1.7','0.25','2','43','351','0.6','17','0.5','27','1000','0.01','295','Support,Carry,Initiator,','2','6.79c'
UNION ALL SELECT '76','1','511','450','0.54','5.36','61','0.25','3.3','2.0','1.85','1800','0.51','24','800','1.7','0.25','2','46','338','0.5','19','0.46','26','900','0.01','315','Carry,','0','6.79c'
UNION ALL SELECT '77','1','568','128','0.55','3.24','62','0.3','1.55','1.9','2.75','1800','0.51','16','800','1.7','0.25','0','58','221','0.5','22','0.55','17','0','0.01','305','Carry,Jungler,Pusher,Durable,','2','6.79c'
UNION ALL SELECT '78','0','587','128','0.65','2.08','59','0.4','1.25','1.95','2.9','1800','0.5','22','800','1.7','0.75','0','52','182','0.6','23','0.35','14','0','0.01','300','Carry,Durable,Initiator,Pusher,','2','6.79c'
UNION ALL SELECT '79','1','473','500','0.5','2.52','54','0.3','2.7','2.2','1.9','1800','0.51','18','800','1.7','0.25','2','50','338','0.6','17','0.36','23','900','0.01','295','Support,Disabler,Nuker,','2','6.79c'
UNION ALL SELECT '80','0','473','550','0.53','3.36','50','0.5','1.4','2.7','2.1','1800','1.17','24','800','1.7','0.5','1','46','169','0.5','17','0.33','13','900','0.01','325','Carry,Durable,Pusher,Jungler,','2','6.79c'
UNION ALL SELECT '81','1','530','128','0.5','3.96','79','0.4','1.2','2.1','2.9','1800','0.2','14','800','1.7','0.25','0','49','208','0.5','20','0.5','16','0','0.01','325','Carry,Disabler,Durable,Pusher,','6','6.79c'
UNION ALL SELECT '82','1','587','128','0.6','4.22','45','0.5','1.6','1.9','1.6','1800','0.5','23','800','1.7','0.25','1','39','260','0.65','23','0.38','20','0','0.01','315','Carry,Disabler,Initiator,','2','6.79c'
UNION ALL SELECT '83','0','625','128','0.4','1.1','89','0.5','1.8','2.0','3.3','1800','0.51','15','800','1.9','0.25','0','81','221','0.5','25','0.6','17','0','0.01','300','Durable,Initiator,Lane Support,Disabler,','2','6.79c'
UNION ALL SELECT '84','0','587','128','0.3','6.96','64','0.45','2.4','1.55','3.2','1800','0.51','14','800','1.7','2.5','2','58','221','0.6','23','0.3','17','0','0.01','295','Nuker,Disabler,Durable,','2','6.79c'
UNION ALL SELECT '85','1','568','128','0.3','3.4','65','0.45','2.5','0.8','2.1','1800','0.51','10','800','1.7','0.25','0','57','351','0.6','22','0.3','27','0','0.01','310','Durable,Pusher,Disabler,Initiator,','2','6.79c'
UNION ALL SELECT '86','0','511','600','0.77','0.96','54','0.1','2.4','1.6','1.5','1800','1.17','14','800','1.7','0.25','2','44','351','0.5','19','0.4','27','1125','0.01','290','Disabler,Nuker,','2','6.79c'
UNION ALL SELECT '87','0','511','600','0.5','1.1','53','0.05','2.5','1.4','1.9','1800','1.0','15','800','1.7','0.25','2','49','286','0.5','19','0.4','22','1200','0.01','300','Nuker,Support,Initiator,Disabler,','4','6.79c'
UNION ALL SELECT '88','1','492','128','0.54','3.66','53','0.4','2.1','2.2','2.0','1800','1.1','19','800','1.7','2.5','1','49','234','0.5','18','0.46','18','0','0.01','300','Disabler,Nuker,','6','6.79c'
UNION ALL SELECT '89','0','549','128','0.5','5.94','46','0.65','1.95','2.75','2.3','1800','0.7','21','800','1.7','0.75','1','44','234','0.5','21','0.5','18','0','0.01','320','Carry,Disabler,Pusher,Escape,','0','6.79c'
UNION ALL SELECT '90','0','416','600','0.85','1.1','54','0.3','2.8','1.6','1.8','1800','2.4','15','800','1.7','0.25','2','38','286','0.5','14','0.3','22','900','0.01','315','Nuker,Support,Lane Support,','6','6.79c'
UNION ALL SELECT '91','0','473','575','0.4','0.0','52','0.001','1.7','1.6','1.9','1800','0.0','14','800','1.7','0.25','0','43','299','0.7','17','0.15','23','1600','0.01','295','Support,Lane Support,Nuker,','0','6.79c'
UNION ALL SELECT '92','1','568','600','0.54','-0.46','55','0.4','2.5','1.3','2.4','1800','1.1','11','800','1.7','0.25','2','45','312','0.5','22','0.46','24','900','0.01','285','Nuker,Durable,Disabler,','0','6.80'
UNION ALL SELECT '93','1','549','128','0.3','1.94','62','0.001','1.9','1.5','1.8','1800','0.51','21','1800','1.7','0.25','1','54','208','0.5','21','0.5','16','0','0.01','305','Escape,','2','6.79c'
UNION ALL SELECT '94','1','416','600','0.6','1.8','50','0.4','1.85','2.5','1.65','1800','0.5','20','800','1.7','0.25','1','44','247','0.5','14','0.5','19','1200','0.01','290','Carry,','0','6.79c'
UNION ALL SELECT '95','0','473','500','0.3','1.94','56','0.51','1.0','2.75','2.2','1800','0.3','21','800','1.7','0.25','1','38','169','0.5','17','0.3','13','1200','0.01','305','Carry,','2','6.79c'
UNION ALL SELECT '96','0','587','128','0.3','3.1','57','0.5','1.6','2.0','3.8','1800','0.51','15','800','1.7','0.25','0','55','195','0.5','23','0.3','15','0','0.01','300','Durable,Disabler,Initiator,','4','6.79c'
UNION ALL SELECT '97','1','549','128','0.84','4.1','61','0.3','1.65','2.5','2.75','1800','0.6','15','800','1.7','0.25','0','49','221','0.8','21','0.5','19','0','0.01','315','Initiator,Disabler,Nuker,Carry,','4','6.80'
UNION ALL SELECT '98','0','568','128','0.64','0.24','55','0.3','2.4','1.8','2.1','1800','0.6','21','800','1.7','0.25','0','51','208','0.5','22','0.36','16','0','0.01','290','Durable,Nuker,Escape,','2','6.80'
UNION ALL SELECT '99','0','568','128','0.3','3.38','58','0.4','2.8','1.8','2.2','1800','0.51','17','800','1.8','0.25','0','48','182','0.6','22','0.3','14','0','0.01','290','Durable,Initiator,Disabler,','2','6.80'
UNION ALL SELECT '100','0','587','128','0.64','3.22','54','0.1','1.7','2.1','2.3','1800','1.0','23','800','1.7','0.25','0','50','234','0.5','23','0.36','18','0','0.01','305','Initiator,Durable,','2','6.79c'
UNION ALL SELECT '101','0','511','600','0.78','0.52','49','0.1','3.6','0.8','1.5','1800','1.08','13','800','1.7','0.25','2','39','351','0.5','19','0.4','27','1000','0.01','325','Nuker,Support,','0','6.79c'
UNION ALL SELECT '102','1','587','128','0.41','1.38','65','0.452','2.0','1.5','2.7','1800','1.008','17','800','1.7','0.25','0','55','273','0.6','23','0.56','21','0','0.01','310','Durable,Support,Carry,','6','6.79c'
UNION ALL SELECT '103','0','606','128','0.97','2.96','57','0.4','1.6','1.5','2.3','1800','0.8','14','800','1.7','0.25','0','47','299','0.4','24','0.35','23','0','0.01','315','Initiator,Durable,','2','6.79c'
UNION ALL SELECT '104','0','644','128','0.64','2.52','61','0.3','2.2','1.7','2.6','1800','0.6','18','800','1.7','0.25','0','57','260','0.6','26','0.46','20','0','0.01','320','Carry,Durable,','2','6.79c'
UNION ALL SELECT '105','0','476','700','0.5','6.96','31','0','2.9','1.3','2','1800','0.61','14','800','1.7','0.25','2','29','286','0.5','17','0.5','22','900','0.02','270','Nuker,Support,Disabler,','2','6.81'
UNION ALL SELECT '106','0','511','128','0.3','1.08','56','0.0','1.8','1.8','2.0','1800','0.51','22','800','1.7','0.25','1','52','260','0.6','19','0.4','20','0','0.01','310','Carry,Nuker,','2','6.79c'
UNION ALL SELECT '107','0','549','128','0.65','3.38','56','0.01','2.4','1.5','2.9','1800','0.0','17','800','1.7','0.25','0','46','234','0.6','21','0.35','18','0','0.01','305','Carry,Nuker,','2','6.79c'
UNION ALL SELECT '109','1','435','128','0.6','7.08','54','0.5','1.75','3.2','1.4','1800','0.51','22','800','1.5','0.25','1','48','247','0.6','15','0.3','19','0','0.01','315','Carry,','2','6.80'
UNION ALL SELECT '110','0','473','500','0.633','-0.32','36','0.01','1.8','1.3','2.9','1800','0.5','12','800','1.7','0.25','2','26','234','0.6','17','0.35','18','1100','0.01','285','Initiator,Disabler,Nuker,','2','6.80'
UNION ALL SELECT '111','0','492','620','0.7','2.1','51','0.3','2.9','1.7','1.9','1800','0.83','15','800','1.4','0.25','2','45','299','0.4','18','0.3','23','900','0.01','305','Support,Lane Support,Nuker,','2','6.82'
UNION ALL SELECT '112','1','606','425','0.8','1.24','45','0.3','3.1','1.9','2.1','1800','0.51','16','800','1.7','0.25','2','38','325','0.4','24','0.25','25','700','0.01','285','','2','6.83c';