# CRM 销售机会信息管理 - 实训项目（ 1 ）

客户关系管理系统（CRM）是以客户数据的管理为核心，利用信息科学技术，实现市场营销、销售、服务等活动自动化，并建立一个客户信息的收集、管理、分析、利用的系统，帮助企业实现以客户为中心的管理模式。在本项目中，我们会从销售机会的生产、获取、分配以及跟踪，从前到后深入理解企业级的数据交互应用。当用户在营销落地页中提交信息，在后台接收并分配给指定销售进行跟踪，销售记录客户沟通的重点信息与标记意向度，直到完成销售。

## 学习目标
1. 了解业务需求，梳理开发流程
2. 深入前后端分工，HTTP 请求处理
3. 掌握基础数据库操作，能开发接口 API

## 任务- 模块
本项目分为 11 个模块

- 模块1 - 环境搭建：主要通过 Express-generator ，快速搭建 Node.js Web 服务框架，及相关依赖的配置，主要软件安装与使用。
- 模块2 - 数据库设计：通过产品文档原型，了解产品业务，并设计出数据库表结构。
- 模块3 - 页面配置：主要通过路由 与 Nunjucks 模版进行页面地址与模版映射，按照产品需求配置出所有页面。
- 模块4 - 页面样式：主要通过 HTML & CSS, 及可以配合 BootStrap 完成所以页面的结构与样式。
- 模块5 - 数据库操作：主要通过 Knex.js 连接 MySQL 数据库，进行数据库表的设计并实现用户角色信息的增删改查。
- 模块6 - 登录状态：主要通过 Cookie 实现用户的登录与状态管理。
- 模块7 - 线索记录：主要通过落地页发送客户信息，并在后台展示销售线索。
- 模块9 - 记录跟踪：销售通过和客户接触在后台提交记录，并设置意向等级、备注信息等。
- 模块9 - 销售机会分配：管理员操作手动分配销售线索给指定销售，后台通过 Cookie 鉴别用户角色，展示对应用户的销售拥有的线索。
- 模块10 - 项目优化：为数据列表添加分页以及筛选搜索功能。