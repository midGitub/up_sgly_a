--[[
客户端用到的文字资源
不同的功能系统，定义各自的关键字
--]]
local TEXT_MAP = {
["BASE1"] = "确认",
["BASE2"] = "关闭",
["BASE3"] = "取消",
["BASE4"] = "标题",
["BASE5"] = "其他",
["BASE6"] = "未实现的方法",
["BASE7"] = "加载中。。。",
["BASE8"] = "确定",
["BASE9"] = "提示",
["BASE10"] = "发送",
["BASE11"] = "充值",
["BASE12"] = "信息提示",
["BASE13"] = "保存",

["LOGIN1"] = "账号不能为空",
["LOGIN2"] = "服务器连接失败, 是否重新连接？",
["LOGIN3"] = "公告数据请求失败。",
["LOGIN4"] = "加载资源中, 过程中不消耗流量。",
["LOGIN5"] = "服务器维护中",
["LOGIN6"] = "更新提示",
["LOGIN7"] = "主人, 封神世界又多了点新玩意儿, 是否更新? 建议使用无线网络下载.",
["LOGIN8"] = "正在努力地下载更新中:%s/%s",
["LOGIN9"] = "请求服务器数据失败, 是否继续尝试?",
["LOGIN10"] = "请求资源配置数据失败, 是否继续尝试?",
["LOGIN11"] = "暂时没有公告",
["LOGIN12"] = "暂时没有服务器数据",
["LOGIN13"] = "文网游备案: |2018|M-RPG 1234 批准文号: 新广出审|2018|1234号 出版物号: ISBN 999-9-9999-9999-9 出版服务单位: 玩胜网络出版社有限公司 游戏著作权人: 玩胜网络科技",
["LOGIN14"] = "抵制不良游戏, 拒绝盗版游戏。注意自我保护, 谨防受骗上当。适度游戏益脑, 沉迷游戏受身。合理安排时间, 享受健康生活。",
["LOGIN15"] = "开始游戏",
["LOGIN16"] = "点击选服",
["LOGIN17"] = "账号登录失败",
["LOGIN18"] = "正在连接服务器",
["LOGIN19"] = "游戏加载进度:%.2f%%",
["LOGIN20"] = "开始游戏",
["LOGIN21"] = "创建角色",
["LOGIN22"] = "公告数据解释失败",
["LOGIN23"] = "名字长度为1-6个字",
["LOGIN24"] = "名字含有非法字符",
["LOGIN25"] = "已有相同名字存在",
["LOGIN26"] = "名字含有敏感词",
["LOGIN27"] = "创建新角色",

["PAY1"] = "充值失败",
["PAY2"] = "元宝不足，是否前往充值？",

["BASEUI1"] = "<size=24><color=ec9639ff>%s</color></size><r><size=20><color=fff1c1ff>%s</color></size>",
["BASEUI13"] = "     <image=%s><size=20><color=99ff66ff>  %s    +%s</color></size>",
["BASEUI14"] = "     <image=%s><size=20><color=ff6666ff>  %s    %s</color></size>",
["BASEUI15"] = "     <image=%s><size=20><color=99ff66ff>  %s    +%s%%</color></size>",
["BASEUI16"] = "     <image=%s><size=20><color=ff6666ff>  %s    %s%%</color></size>",
["BASEUI17"] = "<size=20><color=fff1c1ff>获得 </color><color=%s>%s</color></size>",
["BASEUI18"] = "<size=20><color=fff1c1ff>获得 </color><color=%s>%s %d</color></size>",
["BASEUI19"] = "%d/%d",
["BASEUI20"] = "sys_icon_dj%d.png",

["BASEUI500"] = "%d级",
["BASEUI501"] = "等级:",
["BASEUI502"] = "类型:",
["BASEUI503"] = "物品描述",
["BASEUI504"] = "基础属性",
["BASEUI505"] = "附魔属性:",
["BASEUI506"] = "宝石属性",
["BASEUI508"] = "品　　质",
["BASEUI509"] = "资　　质",
["BASEUI510"] = "悟　　性",
["BASEUI511"] = "物　　攻",
["BASEUI512"] = "魔　　攻",
["BASEUI513"] = "物　　防",
["BASEUI514"] = "魔　　防",
["BASEUI515"] = "生　　命",
["BASEUI516"] = "命　　中",
["BASEUI517"] = "避　　闪",
["BASEUI518"] = "暴　　击",
["BASEUI519"] = "韧　　性",
["BASEUI520"] = "暴击伤害",
["BASEUI521"] = "暴击减免",
["BASEUI522"] = "伤害加成",
["BASEUI523"] = "（＋%s）",

["BAGUI000"] = "战%d",
["BAGUI001"] = "背包容量：%d/%d",
["BAGUI002"] = "仓库容量：%d/%d",
["BAGUI003"] = "背包",
["BAGUI004"] = "仓库",
["BAGUI005"] = "熔炼",
["BAGUI006"] = "全部",
["BAGUI007"] = "角色装备",
["BAGUI008"] = "天神装备",
["BAGUI009"] = "道具",
["BAGUI010"] = "整理",
["BAGUI011"] = "绿",
["BAGUI012"] = "蓝",
["BAGUI013"] = "紫",
["BAGUI014"] = "橙",
["BAGUI015"] = "红",

["CHATUI000"] = "%d\"",
["CHATUI001"] = "V%d",
["CHATUI002"] = "角色等级%d级才能进行聊天",
["CHATUI003"] = "你有新的消息, 点击此处查看",
["CHATUI004"] = "按住说话",
["CHATUI005"] = "点击输入文字…",
["CHATUI006"] = "此屏道不能发言",
["CHATUI007"] = "角色需要加入帮派",
["CHATUI008"] = "角色需要加入队伍",
["CHATUI009"] = "主播准备中",
["CHATUI010"] = "系统默认快捷用语",
["CHATUI011"] = "编辑便捷用语",

["SHOP1"] = "商城",
["SHOP2"] = "购买",
["SHOP3"] = "拥有",
["SHOP4"] = "花费",
["SHOP5"] = "数量",
["SHOP6"] = "还可购买:",
["SHOP7"] = "%d个",
["SHOP8"] = "折扣",
["SHOP9"] = "%s %s重置",
["SHOP10"] = "V%s",
["SHOP11"] = "商品剩余数量不足",
["SHOP12"] = "%s不足",
["SHOP13"] = "一折",
["SHOP14"] = "二折",
["SHOP15"] = "三折",
["SHOP16"] = "四折",
["SHOP17"] = "五折",
["SHOP18"] = "六折",
["SHOP19"] = "七折",
["SHOP20"] = "八折",
["SHOP21"] = "九折",
["SHOP22"] = "等级不足",
["SHOP23"] = "%d/%d",
["SHOP24"] = "每周一",
["SHOP25"] = "每周二",
["SHOP26"] = "每周三",
["SHOP27"] = "每周四",
["SHOP28"] = "每周五",
["SHOP29"] = "每周六",
["SHOP30"] = "每周七",
["SHOP31"] = "每天",

["PLAYER1"] = "经     验",
["PLAYER2"] = "基础属性",
["PLAYER3"] = "高级属性",
["PLAYER4"] = "特殊属性",
["PLAYER5"] = "角色",
["PLAYER6"] = "称号",
["PLAYER7"] = "附身",
["PLAYER8"] = "官职",
["PLAYER9"] = "战",
["PLAYER10"] = "封神公会",
["PLAYER11"] = "%.2f%%",
["PLAYER12"] = "说明标题",
["PLAYER13"] = "说明小标题1",
["PLAYER14"] = "说明小标题内容1",
["PLAYER15"] = "说明小标题2",
["PLAYER16"] = "说明小标题内容2",
["PLAYER17"] = "说明小标题3",
["PLAYER18"] = "说明小标题内容3",
["PLAYER19"] = "<res_up=0><image=%s><res_up=10><size=20><color=ec9639ff> %s</color></size><r>    <res_up=10><image=%s><r>    %s<r><r>",
["PLAYER20"] = "Lv.%d",
["PLAYER21"] = "[%s]",

["MAIN1"] = "和平",
["MAIN2"] = "不能攻击玩家",
["MAIN3"] = "组队",
["MAIN4"] = "不能攻击队伍玩家",
["MAIN5"] = "公会",
["MAIN6"] = "不能攻击公会玩家",
["MAIN7"] = "全体",
["MAIN8"] = "可以攻击全体玩家",
["MAIN9"] = "战",

["CHAT1"] = "加载中。。。",

["RANK1"] = "排行榜",
}


return TEXT_MAP