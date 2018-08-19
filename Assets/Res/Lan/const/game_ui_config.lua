
--tipsUI默认定义数据
local function _tipsUI(  )
	local TipsUI = loadLuaFile ("gameui/tips_ui")
	TipsUI.s_frameWidth = 606		--设置外框宽
	TipsUI.s_maxframeWidth = 606	
	TipsUI.s_maxframeHeigh = 486
	TipsUI.s_minframeWidth = 606	
	TipsUI.s_minframeHeigh = 486	
	TipsUI.s_innerFrameOffsetW=65   --设置内框相对外框宽偏移
	TipsUI.s_innerFrameOffsetY= 8 -- 内框与标题的距离
	TipsUI.s_titleOffestFrame = 12  --标题与外框的相对距离
	TipsUI.s_innerFrameOffsetH= 0    --内框与底部的距离
	TipsUI.s_titleAlignment = gs.TextAnchor.MiddleCenter --设置文字排版位置
	TipsUI.s_msgAlignment = gs.TextAnchor.UpperLeft	 --设置msg排版方式
	TipsUI.s_titleFontSize = 24            --设置标题大小
	TipsUI.s_msgFontSize = 20              --设置文本大小
	TipsUI.s_scrollContentOffsetW = 20     --设置内容相对内框左右偏移
	TipsUI.s_scrollContentOffsetH = 30     --设置内容相对内框上下偏移
	TipsUI.s_scrollContentOffsetB = 60  --结束内容相对内框向下的偏移	
	TipsUI.s_titleStr = TT("BASE4")  
	TipsUI.s_bgPath = "UI/Source/Pub/sys_bg_4.png"	--设外框背景
	TipsUI.s_bgSubPath = "" --设内框背景

	TipsUI.s_titleImgPath = "UI/Source/Pub/sys_title_2.png"

	TipsUI.s_titleBgOffestTitleW = 40    --titleGB的一边宽于title的长度
	TipsUI.s_titleBgOffestTitleH = 10    --titleGB的一边高于title的高度
end

local function _alertUI()
	local AlertUI = loadLuaFile ("gameui/alert_ui")
	---[[
	AlertUI.s_frameWidth = 520	--设置外框宽
	AlertUI.s_maxframeWidth = 960
	AlertUI.s_maxframeHeigh = 300
	AlertUI.s_minframeWidth = 520	
	AlertUI.s_minframeHeigh = 300	
	AlertUI.s_innerFrameOffsetW=15    --设置内框相对外框宽偏移
	AlertUI.s_innerFrameOffsetY= 14--13--15.62  --内框与标题的距离
	AlertUI.s_titleOffestFrame = 20--21--18.38  --标题与外框的距离
	AlertUI.s_innerFrameOffsetH= 80    --内框与底部的距离	
	AlertUI.s_titleAlignment = gs.TextAnchor.MiddleCenter --设置文字排版位置
	AlertUI.s_msgAlignment = gs.TextAnchor.MiddleCenter	 --设置msg排版方式
	AlertUI.s_titleFontSize = 24            --设置标题大小
	AlertUI.s_msgFontSize = 20              --设置文本大小
	AlertUI.s_scrollContentOffsetW = 20     --设置内容相对内框左右偏移
	AlertUI.s_scrollContentOffsetH = 20     --设置内容相对内框上下偏移	
	AlertUI.s_scrollContentOffsetB = 30  	--结束内容相对内框向下的偏移	
	AlertUI.s_titleStr = TT("BASE4")  
	AlertUI.s_bgPath = "UI/Source/Pub/dl_bg_fwq1.png" 	 --设外框背景
	AlertUI.s_bgSubPath ="UI/Source/Pub/dl_bg_fwq2.png"  --设内框背景
	AlertUI.s_titleImgPath ="UI/Source/Pub/sys_title_1.png"
	AlertUI.s_titleBgOffestTitleW = 10    --titleGB的一边宽于title的长度
	AlertUI.s_titleBgOffestTitleH = 10    --titleGB的一边高于title的高度
	--]]
	--AlertUI.s_btnTitleStr = {TT("BASE1"), TT("BASE3"), TT("BASE5")}

	AlertUI.s_standbtnBgPath = ""       --标准按钮类型背景路径
	AlertUI.s_standbtnW = 156			--标准按钮宽
	AlertUI.s_standbtnH = 56			--标准按钮高
	AlertUI.s_btnOffset = 12			--按钮与底部的间距	
end 
--notice_ui默认定义数据
local function _noticeUI()
	local NoticeUI = loadLuaFile("gameui/notice_ui")
	NoticeUI.s_bgWidth = 500		--背景图文本宽
	NoticeUI.s_bgHeight = 100		--背景图文本高
	NoticeUI.s_bgSpritePath = "UI/Source/Pub/sys_bg_prompt.png"	--背景图路径
	NoticeUI.s_fontSize = 50		--字体大小
	NoticeUI.s_fontColor = gs.COlOR_RED	--字体颜色
	NoticeUI.s_startColor = {255,0,0,0}	--初始颜色{r,g,b,a}
	NoticeUI.s_endColor = {255,0,0,1}	--结束颜色{r,g,b,a}
	NoticeUI.s_colorDuration = 0.5	--颜色动画播放时间
	NoticeUI.s_fontStyle = gs.FontStyle.Normal	--字体样式
	NoticeUI.s_startPos = {0,0}		--动画起始位置{x,y}
	NoticeUI.s_endPos = {0,40}		--动画结束位置{x,y}
	NoticeUI.s_duration = 0.5			--位置动画播放时间
	NoticeUI.s_intervalTime = 1		--间隔时间
end

--scroll_notice_ui默认定义数据
local function _scrollNoticeUI()
	local ScrollNoticeUI = loadLuaFile("gameui/scroll_notice_ui")
	ScrollNoticeUI.s_bgHeight = 34						--设背景高
	ScrollNoticeUI.s_displayInterval = 0.5				--动画间的间隔时间
	ScrollNoticeUI.s_contentFontSize  = 20				--内容字体大小
	ScrollNoticeUI.s_contentFontColor  = gs.COlOR_BLACK	--内容字体颜色
	ScrollNoticeUI.s_contentFontStyle = gs.FontStyle.Normal			--内容字体样式
	ScrollNoticeUI.s_titleFontSize  = 32				--title字体大小
	ScrollNoticeUI.s_titleFontColor  = gs.COlOR_BLACK	--title字体颜色
	ScrollNoticeUI.s_titleFontStyle = gs.FontStyle.Normal			--title字体样式
	ScrollNoticeUI.s_leftOffset =340					--背景到屏幕左边的距离
	ScrollNoticeUI.s_rightOffset = 340					--背景到屏幕右边的距离
	ScrollNoticeUI.s_topOffset = 108					--背景到屏幕上面的距离
	ScrollNoticeUI.s_time = 5							--每段动画所用的时间
	ScrollNoticeUI.s_startColorDuration = 0				--显示动画所用的时间
	ScrollNoticeUI.s_endColorDuration = 0				--隐藏动画所用的时间
	ScrollNoticeUI.s_bgPath = "UI/Source/Pub/sys_bg_tv.png" 
	ScrollNoticeUI.s_maskOffsetL = 0					--mask与title间的距离
	ScrollNoticeUI.s_fixLen = 600						--设定固定宽度
end

local function _progressBarUI()
	local ProgressBarUI = loadLuaFile ("gameui/progress_bar_ui")

	ProgressBarUI.s_descFontSize  =32						--title字体大小
	ProgressBarUI.s_descColor = gs.COlOR_BLACK				--title颜色
	ProgressBarUI.s_percentFSize = 32						--进度字体大小
	ProgressBarUI.s_percentColor = gs.COlOR_BLACK			--进度字体颜色
	ProgressBarUI.s_percentFPath= ""						--进度字体路径
	ProgressBarUI.s_bgPath = ""								--背景路径
	ProgressBarUI.s_fgPath = ""								--前景背景路径
	ProgressBarUI.s_fillOrigin = gs.UI.Image.OriginHorizontal.Left	--进度条开始方向
	ProgressBarUI.s_percentOffset = 10    					--进度条与fillAmountTitle之间的距离
	ProgressBarUI.s_descOffset = 30			   	 			--title与进度条间的距离
	ProgressBarUI.s_descFontPath= ""
	ProgressBarUI.s_fgOffset_T_B = 5					    --进度条前景与背景的上下间的间距
	ProgressBarUI.s_fgOffset_L_R = 5						--进度条前景与背景的左右间的间距
end

local function  _funcMenuUI(  )	
	local FuncMenuUI = loadLuaFile ("gameui/func_menu_ui")
	FuncMenuUI.s_startDir = gd.FMENU_L						--生成开始的方向
	FuncMenuUI.s_newLineDir = gd.FMENU_LINE_T				--回行的方向	
	FuncMenuUI.s_cellWidth = 142							--cell的宽度
	FuncMenuUI.s_cellHeight = 142 							--cell的高度
	FuncMenuUI.s_spacingX = 20								--相邻cell的x方向上间隙
	FuncMenuUI.s_spacingY = 20								--相邻cell的y方向上间隙
	FuncMenuUI.s_countLine = 5								--每行或列的数目
	FuncMenuUI.s_displayInterval = 0.2						--显示或隐藏间隔时间
	FuncMenuUI.s_isAnima = false							--是否使用动画
	FuncMenuUI.s_posOffset = 280							--起始位置偏移值
end 

---[[
local function _mulProgressBarUI( )
	local MulProgressBarUI = loadLuaFile ("mono/ui/mul_progress_bar")
	MulProgressBarUI.s_barWidth =  400  		--宽
	MulProgressBarUI.s_barHeigh =  40			--高	
	MulProgressBarUI.s_bgPath = ""				--背景路径
	MulProgressBarUI.s_fgOffset_L_R = 5			--前景与背景的左右间的间距
	MulProgressBarUI.s_fgOffset_T_B = 5			--前景与背景的上下间的间距
	MulProgressBarUI.s_fontSize = 32			--字体大小
	MulProgressBarUI.s_fontColor = nil      	--字体颜色
	MulProgressBarUI.s_colorTable = {gs.Color(1,0,0,1),gs.Color(0, 1, 0, 1 ),gs.Color(0, 0, 1, 1 )}  --颜色table

	MulProgressBarUI.s_totalValue = 50000		--总值大小
	MulProgressBarUI.s_oneBarValue = 10000		--一条所表示的大小
	MulProgressBarUI.s_quickSpeed = 1			--受到重伤时( >oneBarBlood)或者处于加血状态，当前血条的流动速度  
	MulProgressBarUI.s_slowSpeed = 0.1			--受到重伤时( >oneBarBlood)或者处于加血状态，当前血条的流动速度 
	MulProgressBarUI.s_nowSpeed = 0				--当前所采用的速度
	MulProgressBarUI.s_middleBarSpeed = 0.1 	--MiddleBar流动速度  
end 
--]]

local function _fullScreenWinUI( )
	local FullScreenWinUI = loadLuaFile("logic_ui/full_screen_win")
	FullScreenWinUI.s_spacing = 16			--每个Cell间的间距
	FullScreenWinUI.s_maxScollViewH =520	--ScollViewH的最大高
	FullScreenWinUI.s_cellHeight = 118		--cell的高度

end

local function setupUIDef(  )
	_tipsUI()
	_alertUI()
	_noticeUI()
	_scrollNoticeUI()
	_progressBarUI()
	_funcMenuUI()
	_mulProgressBarUI()
	_fullScreenWinUI()
end
setupUIDef()