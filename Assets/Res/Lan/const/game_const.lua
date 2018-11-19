gcst = gcst or {}

gcst.NOTICEINFO_dis = 36 		--移动距离
gcst.NOTICEINFO_intal  = 1	    --显示时间
gcst.NOTICEINFO_count = 5		--最大显示
gcst.NOTICEINFO_speed = 100		--速度
gcst.NOTICEINFO_fastSpeed = 400 --快速移动速度
gcst.NOTICEINFO_showFadeTime = 0.5  --显示的渐变时间
gcst.NOTICEINFO_hideFadeTime = 0.5  --隐藏的渐变时间
gcst.NOTICEINFO_startPos = gs.VEC3_ZERO  --开始位置
gcst.NOTICEINFO_interval = 0.32 --每个提示出来的就小时间间隔

gcst.NOTICEGETGOODS_dis = 40  		--移动距离
gcst.NOTICEGETGOODS_intal  = 1	    --显示时间
gcst.NOTICEGETGOODS_count = 5		--最大显示
gcst.NOTICEGETGOODS_speed = 100		--速度
gcst.NOTICEGETGOODS_fastSpeed = 200 --快速移动速度
gcst.NOTICEGETGOODS_showFadeTime = 0.5  --显示的渐变时间
gcst.NOTICEGETGOODS_hideFadeTime = 0.5  --隐藏的渐变时间
gcst.NOTICEGETGOODS_startPos = gs.VEC3_UP*(-261)  --开始位置
gcst.NOTICEGETGOODS_interval = 0.28  --每个提示出来的就小时间间隔


gcst.NOTICEATTR_dis = 36  		--移动距离
gcst.NOTICEATTR_intal  = 1	    --显示时间
gcst.NOTICEATTR_count = 5		--最大显示
gcst.NOTICEATTR_speed = 100		--速度
gcst.NOTICEATTR_fastSpeed = 400 --快速移动速度
gcst.NOTICEATTR_showFadeTime = 0.5  --显示的渐变时间
gcst.NOTICEATTR_hideFadeTime = 0.5  --隐藏的渐变时间
gcst.NOTICEATTR_startPos =  gs.VEC3_UP*(-261)  --开始位置
gcst.NOTICEATTR_interval = 0.28  --每个提示出来的就小时间间隔

gcst.NOTICEPOWER_scaleSize = 3  		--动画结束后的放大倍数
gcst.NOTICEPOWER_cellScaleSize = 0.6    --cell的大小位数
gcst.NOTICEPOWER_hideFadeTime = 0.8  	--隐藏的渐变时间
gcst.NOTICEPOWER_showFadeTime = 0.8  	--隐藏的渐变时间
gcst.NOTICEPOWER_interval = 0.5  		--每个提示出来的就小时间间隔
gcst.NOTICEPOWER_duration = 0.5 		--每个数字动画滚动时长
gcst.NOTICEPOWER_figthOffset = -10		--战字与数字的距离

gcst.EQUIPMENTUSETIP_posX = 283			--装备使用提示X位置
gcst.EQUIPMENTUSETIP_posY = -11.7		--装备使用提示Y位置
gcst.EQUIPMENTUSETIP_stayTime = 5		--装备使用提示停留界面时间

gcst.INVITEDTIPS_posX = 0			--受邀提示X位置
gcst.INVITEDTIPS_posY = -278.8		--受邀提示出显Y位置
gcst.INVITEDTIPS_showAnimaMoveY = -188.8	--受邀提示显示移动到的位置
gcst.INVITEDTIPS_hideAnimaMoveY = -98.8		--受邀提示隐藏移动到的位置
gcst.INVITEDTIPS_stayTime = 5		--受邀提示停留界面时间
gcst.INVITEDTIPS_duration = 1		--动画时间

gcst.ARRACKTIPS_posX = 321		--受邀提示X位置
gcst.ARRACKTIPS_posY = -165		--受邀提示出显Y位置


--摄像机 BEGIN
--锁定距离
gcst.CAMERA_LOCK_DIS = 19
gcst.CAMERA_LOCK_DIS_MIN = 10
gcst.CAMERA_LOCK_DIS_MAX = 19
gcst.CAMERA_LOCK_DIS_SPEED = 10
--锁定俯视度
gcst.CAMERA_ANGLE_Y = 45
gcst.CAMERA_ANGLE_Y_MIN = 20
gcst.CAMERA_ANGLE_Y_MAX = 65
--gcst.CAMERA_LOCK_DIS_MIN_PITCH = 30
--初始平面度角
gcst.CAMERA_ANGLE_X = 40
--旋转速度
gcst.CAMERA_ANGLE_Y_SPEED = 40
gcst.CAMERA_ANGLE_X_SPEED = 80

--锁定物的Y轴偏移
gcst.CAMERA_LOCK_Y_OFFSET = 1
--视口参数
gcst.CAMERA_FIELD_VIEW = 60
gcst.CAMERA_FIELD_VIEW_MIN = 30
gcst.CAMERA_FIELD_VIEW_MAX = 80
gcst.CAMERA_FIELD_VIEW_SPEED = 80
--边界视口时, y轴角度的调整值
gcst.CAMERA_FIELD_VIEW_MIN_ANGLE_Y = 30
gcst.CAMERA_FIELD_VIEW_NOR_ANGLE_Y = 60

gcst.CURRENCY_GOLD=1	--元宝
gcst.CURRENCY_MONEY=2	--铜币
gcst.CURRENCY_SOUlSTONE=5	--	魂石（兑换天神碎片）
gcst.CURRENCY_HONOR=6	--荣誉（竞技场币）
gcst.CURRENCY_MERIT=7	--功勋（帮会战币）
gcst.CURRENCY_GUILD_COUNTRIBUTON=9		--帮会贡献
gcst.CURRENCY_GUILD_FUNDS=10			--	帮会资金
gcst.CURRENCY_TIANJING=3				--	天晶（抽取元神货币）
gcst.CURRENCY_SOUL_MARROW=13			--元神精华（用于元神升级）

--摄像机 END

--玩家数据表格属性BEGIN
gcst.ATK=1	--基础物理攻击
gcst.MATK=2	--基础法术攻击
gcst.ATK_RATE=3	--物理攻击百分比加成
gcst.MATK_RATE=	4	--法术攻击百分比加成
gcst.ATK_REVISE=5	--修正物理攻击
gcst.MATK_REVISE=6	--修正法术攻击
gcst.ATK_RESULT=7	--面板物理攻击
gcst.MATK_RESULT=8	--面板法术攻击
gcst.DEF=9			--基础物理防御
gcst.MDEF=10		--基础法术防御
gcst.DEF_RATE=11		--物理防御百分比加成
gcst.MDEF_RATE=12	--法术防御百分比加成
gcst.DEF_Revise=13	--修正物理防御
gcst.MDEF_Revise=14	--修正法术防御
gcst.DEF_RESULT=15	--面板物理防御
gcst.MDEF_RESULT=16	--面板法术防御
gcst.MAX_HP=17		--基础最大生命
gcst.MAX_HP_RATE=18	--最大生命百分比加成
gcst.MAX_HP_Revise=19	--修正最大生命
gcst.MAX_HP_RESULT=20	--面板生命
gcst.HIT_RATE=21		--命中率
gcst.DODGE_RATE=22	--闪避率
gcst.CRIT_RATE=23	--暴击率
gcst.ANTI_CRIT_RATE=24	--抗暴率
gcst.CRIT_ADD_RATE=25		--暴伤增加率
gcst.CRIT_reduce_RATE=26	--暴伤减少率
gcst.DMG_ADD_RATE=27		--伤害增加率
gcst.DMG_RUDUCE_RATE=28	--伤害减少率
gcst.MOVE_SPEEd_BASE=29	--基础移动速度
gcst.RECOVERY_FREE=30	--空闲回复速率
gcst.RECOVERY_WAR=31		--战争回复速率
gcst.ELEMENT_ADD1=32		--元素精通点1
gcst.ELEMENT_ADD2=33		--元素精通点2
gcst.ELEMENT_ADD3=34		--元素精通点3
gcst.ELEMENT_ADD4=35		--元素精通点4
gcst.ELEMENT_ADD5=36		--元素精通点5
gcst.ELEMENT_REDUCE1=37		--元素抗性点1
gcst.ELEMENT_REDUCE2=38		--元素抗性点2
gcst.ELEMENT_REDUCE3=39		--元素抗性点3
gcst.ELEMENT_REDUCE4=40		--元素抗性点4
gcst.ELEMENT_REDUCE5=41		--元素抗性点5

gcst.EQUIPKIND_WEAPON=1		--武器,刀枪剑戟,扇杖锤钩,等
gcst.EQUIPKIND_HELMET=2		--头盔,帽子
gcst.EQUIPKIND_ARMOR=3		--盔甲,衣服
gcst.EQUIPKIND_BELT=4		--腰带
gcst.EQUIPKIND_WRISTER=5	--护腕,手环
gcst.EQUIPKIND_BOOTS=6		--鞋子,战靴
gcst.EQUIPKIND_NECKLACE=7	--项链,吊坠,护符
gcst.EQUIPKIND_RING=8		--戒指

--玩家数据表格属性END

gcst.MAP_GDATA_PATH="GData/Scene/Grid/"
gcst.MAP_HDATA_PATH="GData/Scene/Height/"
