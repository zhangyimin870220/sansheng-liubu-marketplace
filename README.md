# 三省六部制插件市场

## 概述

这是基于中国唐代三省六部制的 CodeBuddy 插件市场，提供完整的多 Agent 协作工作流系统。

## 安装方式

### 方式一：通过 GitHub（推荐）

```bash
/plugin marketplace add zhangyimin870220/sansheng-liubu-marketplace
```

### 方式二：通过 Gitee

```bash
/plugin marketplace add zym1987/sansheng-liubu-marketplace
```

### 方式三：通过本地路径测试

```bash
/plugin marketplace add d:/xxx/xxxx/xxxx/xxxx/marketplace
```

## 包含插件

### sansheng-liubu (v1.0.0)

**完整的任务调度和工作流管理系统**

包含 10 个 Agent：
- **太子** - 消息分拣与任务识别
- **中书省** - 规划中枢，起草执行方案
- **尚书省** - 调度大脑，派发任务给六部
- **门下省** - 审议把关，评估方案可行性
- **工部** - 功能开发、架构设计
- **兵部** - 基础设施、部署运维
- **户部** - 数据分析、统计报表
- **礼部** - 文档规范、UI审查
- **刑部** - 代码审查、测试验收
- **吏部** - 人事管理、Agent管理

## 工作流程

```
皇上下旨 → 太子分拣 → 中书省起草 → 门下省审议 → 尚书省派发 → 六部执行 → 汇总回奏
```

## 目录结构

```
sansheng-liubu-marketplace/
├── .codebuddy-plugin/
│   └── marketplace.json
├── sansheng-liubu/
│   ├── .codebuddy-plugin/
│   │   └── plugin.json
│   ├── agents/
│   │   ├── taizi.md
│   │   ├── zhongshu.md
│   │   ├── shangshu.md
│   │   ├── gongbu.md
│   │   ├── bingbu.md
│   │   ├── hubu.md
│   │   ├── libu.md
│   │   ├── xingbu.md
│   │   ├── libu-hr.md
│   │   └── menxia.md
│   ├── docs/
│   │   ├── workflow.md
│   │   └── agents.md
│   └── README.md
└── README.md
```

## 使用示例

安装市场后，启用插件：

```bash
/plugin enable sansheng-liubu
```

然后可以使用各个 Agent：
- `/taizi` - 太子
- `/zhongshu` - 中书省
- `/shangshu` - 尚书省
- `/gongbu` - 工部
- `/bingbu` - 兵部
- `/hubu` - 户部
- `/libu` - 礼部
- `/xingbu` - 刑部
- `/libu-hr` - 吏部
- `/menxia` - 门下省

## 团队自动配置

在项目的 `.codebuddy/settings.json` 中添加：

```json
{
  "extraKnownMarketplaces": {
    "sansheng-liubu": {
      "source": {
        "source": "github",
        "repo": "zhangyimin870220/sansheng-liubu-marketplace"
      }
    }
  },
  "enabledPlugins": {
    "sansheng-liubu@sansheng-liubu": true
  }
}
```

## 管理命令

- 列出市场：`/plugin marketplace list`
- 更新市场：`/plugin marketplace update sansheng-liubu`
- 移除市场：`/plugin marketplace remove sansheng-liubu`

## 文档

详细文档请查看：
- [工作流程图](sansheng-liubu/docs/workflow.md)
- [Agent 架构图](sansheng-liubu/docs/agents.md)

## 许可证

MIT License
