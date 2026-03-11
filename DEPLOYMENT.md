# CodeBuddy 插件市场上架说明

## ✅ 已完成的工作

### 1. 仓库创建与推送
- ✅ **Gitee 仓库**: https://gitee.com/zym1987/sansheng-liubu-marketplace
- ✅ **GitHub 仓库**: https://github.com/zym1987/sansheng-liubu-marketplace

### 2. 插件结构
```
sansheng-liubu-marketplace/
├── .codebuddy-plugin/
│   └── marketplace.json          # 市场配置文件
├── sansheng-liubu/
│   ├── .codebuddy-plugin/
│   │   └── plugin.json           # 插件清单
│   ├── agents/                   # 10 个 Agent
│   │   ├── taizi.md             # 太子
│   │   ├── zhongshu.md          # 中书省
│   │   ├── shangshu.md          # 尚书省
│   │   ├── gongbu.md            # 工部
│   │   ├── bingbu.md            # 兵部
│   │   ├── hubu.md              # 户部
│   │   ├── libu.md              # 礼部
│   │   ├── xingbu.md            # 刑部
│   │   ├── libu-hr.md           # 吏部
│   │   └── menxia.md            # 门下省
│   └── docs/
│       ├── workflow.md          # 执行流程图
│       └── agents.md            # 组织架构图
└── README.md
```

## 📦 如何安装使用

### 方式一：通过远程仓库添加市场
```bash
# 添加 Gitee 市场
/plugin marketplace add zym1987/sansheng-liubu-marketplace

# 或添加 GitHub 市场
/plugin marketplace add zhangyimin870220/sansheng-liubu-marketplace
```

### 方式二：通过本地路径添加市场
```bash
/plugin marketplace add c:/Users/ak000/CodeBuddy/Claw/marketplace
```

## 🎯 插件功能

### 太子 (taizi)
- **职责**: 消息分拣与任务识别
- **功能**: 接收用户消息,区分闲聊/问答与正式旨意,提炼需求

### 中书省 (zhongshu)
- **职责**: 规划中枢,起草执行方案
- **功能**: 分析需求,起草完整执行方案,调用门下省审议

### 门下省 (menxia)
- **职责**: 审议把关,封驳审议
- **功能**: 审查方案合理性,最多3轮修改,最终裁定

### 尚书省 (shangshu)
- **职责**: 调度大脑,任务派发与结果汇总
- **功能**: 根据方案路由到六部执行,汇总结果回奏

### 六部
| 部门 | 职责 | 文件名 |
|------|------|--------|
| 工部 | 开发实现 | gongbu.md |
| 兵部 | 部署运维 | bingbu.md |
| 户部 | 数据分析 | hubu.md |
| 礼部 | 文档规范 | libu.md |
| 刑部 | 测试审查 | xingbu.md |
| 吏部 | 人事管理 | libu-hr.md |

## 🔄 工作流程

```
皇上下旨
    ↓
太子: 消息分拣与需求提炼
    ↓
中书省: 起草执行方案
    ↓
门下省: 审议把关 (最多3轮)
    ↓
尚书省: 任务路由派发
    ↓
六部: 具体执行
    ↓
尚书省: 结果汇总
    ↓
中书省: 回奏皇上
```

## 📋 系统要求

- CodeBuddy 版本: 2.0.0+
- 支持的 Agent: 10 个

## 📄 许可证

MIT License
