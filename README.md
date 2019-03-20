## 0- 项目名称
CRM 销售机会信息管理

## 1-项目导学页

### 1.1 - 项目介绍
本项目为奔驰汽车的 CRM 中的销售机会信息管理。奔驰汽车和 4A 广告公司合作做出各类精良的落地页并在各个社交、媒体平台中进行投放。需要一套承接这类落地页收集回来的用户信息，并进行跟踪、统计、反馈的管理系统。通过数据反馈出，哪个落地页有效，哪个渠道获客最多，哪个销售转化最强。

### 1.2 - 教学目标
本项目为 Node.js 构建 Web 服务框架，主要考察对服务端框架的使用能力，分成以下五个部分：
一、模版生成（View)
二、数据库操作(Model)
三、路由配置( Route)
四、控制器配置( Controller )

### 1.3 - 前置项目
无

### 1.4 - 学习周期
| 总时长   | 任务 1   | 任务 2   | 任务 3   | 任务 4   | 任务 5   | 任务 6   | 任务 7   | 任务 8   | 任务 9   | 
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
| 18h   | 2h   | 2h   | 2h   | 2h   | 2h   | 2h   | 2h   | 2h   | 2h   | 

### 1.5 - 配套资料
* 设计稿

![图片](https://uploader.shimo.im/f/n8hwecEgnEYKIFRI.png!thumbnail)
![图片](https://uploader.shimo.im/f/dFkLEz6hjQkT5dtN.png!thumbnail)
![图片](https://uploader.shimo.im/f/yolD2gSGJB4TMrdh.png!thumbnail)
![图片](https://uploader.shimo.im/f/tJ59u4U5XfYSSFXz.png!thumbnail)
![图片](https://uploader.shimo.im/f/T1GMgaAHL8wDP6FJ.png!thumbnail)
![图片](https://uploader.shimo.im/f/pFHc71iE9bYKUcJf.png!thumbnail)
![图片](https://uploader.shimo.im/f/SDVbjkiV8gMlqA8e.png!thumbnail)

* 产品流程图

![图片](https://uploader.shimo.im/f/8rwtAbOCyKgO2cyn.png!thumbnail)
![图片](https://uploader.shimo.im/f/EwZZsWDq7pcLPmd8.png!thumbnail)

## 2-项目剖析页
### 2.1 - 项目解读
使用 Node.js 的 Express 框架完成用户数据的增删改查、及角色的设置。收集落地页提交的用户信息，管理员进行分配给销售，销售对客户进行跟踪。项目主要包含以下几个模块：
 
1. 前台
  1. 落地页
2. 后台
  1. 后台登录
  2. 用户管理
    1. 用户列表
    2. 用户新增
    3. 用户修改
  3. 线索管理
    1. 线索列表
    2. 线索跟踪

### 2.3 - 技能要求 
* 掌握 HTML
* 掌握 CSS
* 掌握 Less
* 掌握 JavaScript
* 掌握 Axios
* 了解 Nodejs
* 了解 MySQL

### 2.4 - 项目拆解
本项目主要分为  9 个任务：

任务一： 环境搭建
主要通过 express-generator 快速搭建 Web 服务框架。

任务二：数据库设计
主要通过产品原型设计出数据库表结构。

任务三：模版配置
主要通过 Nunjucks 和 router 配置生成各个页面及访问路径。

任务四：页面样式
主要通过 HTML 、CSS 完成所有页面的结构与样式。

任务五：用户管理
主要通过 knex.js 连接 MySQL 实现用户数据的增删改查。

任务六：登录与退出
主要通过 cookie 实现用户登录状态的管理。

任务七：线索记录
主要通过落地页发送的用户数据在线索管理列表中展示。

任务八：线索跟踪
主要通过对应的线索信息进行编辑和提交记录信息。

任务九：销售展示
主要通过权限的区分为管理员与销售展示不同的内容。

任务十：项目优化
主要通过自己的想法，对项目进行调整和修改。

## 3-任务详情页
### 3.1 -环境搭建
Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境，采用 C++ 语言来编写而成。提供了很多系统级的 API，如文件操作、网络处理等，主要用于创建快速的、可扩展的网络应用。 同时，Node.js 的包管理器 npm 是全球最大的开源库生态系统。也正是因为 Nodejs，JavaScript 从仅仅在浏览器运行，到可以在客户端、服务端运行。

任务要求：
1. 安装 Node.js 环境
2. 使用 Node.js 中 Express 框架快速搭建Web 框架，可以在浏览器中展示欢迎页面。

任务提示：
1. 全局安装 express-generator 
```
npm install express-generator -g
```

1. 在桌面或其他的地址初始化项目
```
cd ~/Desktop && express combat-crm
```

1. 下载相关依赖
```
cd combat-crm && npm install
```

1. 启动项目
```
npm start
```

### 3.2 - 数据库设计
项目开发中后端第一个考虑的事情就是数据库的设计，有多少个模块，数据之间怎么关联，需要充分的了解业务的需求，设计出扩展性强的数据结构，以应对之后的需求迭代的功能添加。在本次任务中我们一起来思考，设计一个扩展性强的数据库表结构。

任务要求：
1. 本地安装 MySQL，并使用第三方工具连接
2. 创建项目数据库，并在数据库中创建关联的表
3. 在数据库表中定义好字段以及其属性
4. 在工具中导出 sql 文件

任务提示：
5. 可以使用 [XAMPP](https://www.apachefriends.org/zh_cn/index.html) 集成环境，启动数据库。
6. [navicat](http://www.navicat.com.cn/) - 数据库管理工具 - windows 用户安装。
7. [Sequel Pro](https://www.sequelpro.com/) - 数据库管理工具 - macOS 用户安装。
8. 项目的主要模块有：用户、线索、记录。
9. 用户包含的主要字段应该有：姓名、电话、密码、角色。
10. 线索包含的主要字段应该有：姓名、电话、来源、时间。
11. 记录包含的主要字段应该有：内容、时间。

注意：
 XMAPP 默认用户名为：root , 密码为空 , host 为 127.0.0.1 。请确保 XAMPP 启动，然后使用数据库管理工具连接成功。在 Mac 的新版本XAMPP中，host 未必为 127.0.0.1，可能是 192.168.64.2 ，需要按提示修改文件获取权限，同时设置新的用户和密码。

### 3.3 - 模版配置
模板引擎，这里特指用于Web开发的模板引擎。是为了使用户界面与业务数据（内容）分离而产生的，它可以生成特定格式的文档，用于网站的模板引擎就会生成一个标准的HTML文档。通过模版引擎，我们可以在页面结构中使用语法进行判断、循环以及数据的嵌套操作。在本次项目中，我们使用 express-generator 快速生产框架时候自带 Pug 模版，我们需要把它换成 nunjucks，因为它的语法更接近于 HTML ，同时功能丰富、可扩展性强。

任务要求：
1. 替换模版引擎为 nunjucks。
2. 生成页面相关模版文件。
3. 配置公共模版文件如：layout、admin_layout 。
4. 相关页面包括：落地页、登录页、用户列表页、新建用户页、用户编辑页、线索列表页、线索跟踪页，7 个页面。
5. 7 个页面需要使用，使用 route 配置出其地址可访问

任务提示：
1. 参考文档下载并在 app.js 中安装配置，建议配置模版文件后缀为 tpl 。
2. 在 views 中删除 jade 类型文件，新建新的页面模版文件。
3. 参考首页的事例子，在 route 类型文件中绑定其他页面与访问地址。

### 3.4 - 页面样式
在上一节中我们配置好了各个页面的模版文件，这次我们需要为其添加 HTML 相关的 DOM 结构以及使用 CSS 丰富其展示效果。在本次任务中，我们需要为 7 个页面添加其结构和样式，大家可以尽情发挥。

任务要求：
1. 登录页必须包含内容：电话、密码的表单组合。
2. 落地页必须包含内容：项目、电话的表单组合。
3. 用户列表页必须包含内容有：导航、用户信息相关表格。
4. 用户新建页必须包含内容有：导航、用户名称、电话、密码、角色的表单组合。
5. 用户编辑页必须包含内容有：导航、用户名称、电话、密码、角色的表单组合。
6. 线索列表页必须包含内容有：导航、线索信息相关表格。
7. 线索记录页必须包含内容有：导航、线索名称、电话、意向程度、所属销售组合的表单，以及时间和内容的记录流程。

任务提示：
1. 后台各个页面中涉及到的表单、表单项、表格的样式可以进行复用。
2. 后台的样式框架如导航、公共头、公共尾部的结构和样式可以抽离。
3. 对于 BootStrap 熟悉的同学可以使用 BootStrap 或者 Martin UI 库。

### 3.5 - 用户管理
在本次用户管理任务中，我们需要连接数据库实现用户的增删改查。我们可以通过用户新建页面提交新建用户并记录到数据库，通过用户列表页面获取数据库中用户的数据并展示出来，在用户编辑页中对匹配的用户内容进行编辑和修改。在本次任务中，我们推荐用 knex.js 完成数据库的交互逻辑，同时我们对这部分的数据库及逻辑操作有 MVC 代码结构的要求。

Knex.js是为 Postgres，MSSQL，MySQL，MariaDB，SQLite3，Oracle 和 Amazon Redshift设计的SQL查询构建器，其设计灵活，便于携带并且使用起来非常有趣。它具有传统的节点样式回调以及用于清洁异步流控制的承诺接口，流接口，全功能查询和模式构建器，事务支持（带保存点），连接池 以及不同查询客户和方言之间的标准化响应。Knex的主要目标环境是Node.js，您需要安装该 knex 库，然后安装适当的数据库库。

任务要求：
1. 安装 Knex.js 连接数据库。
2. 在根目录中新建 config 文件用来存放数据库的配置信息。
3. 在根目录中新建 models 文件夹用户存放数据库操作相关文件。
4. 在根目录中新建 controllers 文件夹新建页面逻辑相关的文件。
5. 在根目录中 routes 文件夹中，新建 api.js 文件用户配置 API 相关路由。
6. 在用户新增页面，输入用户姓名、电话、密码、角色提交后数据能存进数据库，成功返回到用户列表页面。
7. 在用户列表页面，展示数据库中的所有用户信息，并生产对应的编辑地址。
8. 在用户编辑页面，可以修改对应的用户相关信息，成功返回到用户列表页面。

任务提示：
1. 在 models 模版中建立公共的连接数据库基础文件 base.js
2. 在 modes 模版文件中建立用户数据操作相关的文件 user.js 并继承于 base.js
3. 在 controllers 控制器文件中建立用户逻辑操作相关的文件 user.js 并引用 models/user.js 实现用户数据库操作增删改查的相关逻辑。
4. 在 routes 中配置页面模版展示逻辑，应用 controllers 中的方法，在 routes/index.js 页面路由中配置页面地址，在 routes/api.js API路由中配置API地址。

### 3.6 - 登录与退出
在上节任务中，我们实现了用户数据的增删改查，我们用户的数据表中已经拥有了相关的用户。在这次任务中，我们需要在登录页面输入对应的用户手机、密码，如果和数据库中数据匹配校验成功给予登录，否则登录失败。在登录成功后，我们需要通过用户相关的数据加密生成 token 存放在 cookie 中，当用户下一次来的时候如果发现这个 cookie 那么保持用户等登录状态，当用户点击退出的时候，清除对应的 cookie 那么返回到最初始未登录的状态。

任务要求：
1. 登陆页输入手机和密码进行登录。
2. 服务器需要保持用户登录的状态，在下次到登陆页的时候重定向到线索页面。
3. 服务器需要判断用户登录的状态，在未登录情况下去后台相关页面重定向到登录页。
4. 在后台公共头部添加退出按钮，点击退出并重定向到登录页面。

任务提示：
1. 在用户登录的 controller 方法中，获取用户提交的电话、密码，到数据库中查询是否有这个用户。如果没有，返回账户密码错误，如果有继续下一步逻辑。
2. 把用户的账户、密码、ID 加密成 token ，连同用户名存放在 cookie 中。
3. 用户刷新浏览器或者重新进入页面，在 app.js 代码走到路由之前进行一步数据筛选操作，获取 cookie 上的 token 以及用户名进行解密，然后把结果数据以及用户登录数据存放在 res.locals 中。
4. 新建一个 middleware 的中间层配置，用户判断是否登录，并在路由中引入使用。如果该路由中间件判断用户未登录，即可重定向到登录页面。
5. 在渲染登录页面的 controller 逻辑中，可以获取之前存放在 res.locals 中的数据判断用户是否登录，如果登录了，就重定向到线索管理页面。
### 3.7 - 线索记录
落地页会在各地社交媒体中投放，例如百度推广、朋友圈广告等，拥有意向的用户会填写相关的个人信息进行预约，然后客户将会进行跟踪。本任务我们需要收集落地页中提交的信息，存放到数据库中，并在线索页面中展示。

任务要求：
1. 落地页提交的信息需要包括：用户姓名、手机以及数据来源（在 URL 地址参数中获取 ）
2. 线索入库时候，需要记录服务器时间到数据库中（客户端时间会有差异性）。
3. 后台线索列表中，提交时间需要经过格式化处理，如：2019-04-02 13:45。

任务提示：
1. 落地页在获取用户姓名、手机之外还需要在获取 URL中获取来源参数，例如：[http://localhost:3000?utm=baidu](http://localhost:3000?utf=baidu) ，那么需要获取浏览器地址中 utm 的参数值，baidu 。
2. 线索列表中 controller 获取到线索数据，可以 map 一次进行创建时间的 Dateformat。
### 3.8 - 线索跟踪
在用户提交了个人信息后，后台产生了线索数据，接下来我们需要对线索进行跟踪和处理。在本任务中，我们需要完成对线索的编辑还有为其添加跟踪记录。在线索的编辑页面，我们通过线索 ID 获取到线索的内容，在页面展示初始化的数据。通过编辑选择用户的意向状态，以及分配给不同的销售。同时在线索列表中，需要展示该分配的销售名称。

任务要求：
1. 线索编辑页需要展示用户提交的默认数据，例如：姓名、电话、来源、时间
2. 线索编辑页可以修改用户的意向状态
3. 线索编辑页可以选择分配给不同的销售
4. 线索编辑页可以提交并展示该线索的所有跟踪记录。
5. 线索列表中展示已经分配销售的线索的销售名称。

任务提示：
1. 和用户编辑一样通过 ID 获取对应用户的信息并渲染到模版上
2. 在 controller 的逻辑中需要获取 user 中角色为销售的用户，并渲染在选择框中提供选择。
3. 在 view 模版中可以使用 if 判断语法根据所选择的状态 id 渲染不同的文案。
4. 在线索列表中的 controller 逻辑中获取所有线索的方法需要进行重构，需要通过联表查询，通过线索数据中对应的 user_id 和 user 表中的 id 进行匹配，获取到对应的销售名字。
5. 在用户提交线索记录的时候，需要把当前的线索 ID也一起提交，同时服务器获取并设置当前时间。线索编辑列表中，可以更具当前线索 ID 获取该 ID 下的所有记录并展示。

### 3.9 - 销售展示
在当前的项目中，我们已经完成了所有数据的流程。用户可以增加和修改，而且可以登录和退出。在落地页中提交的数据在线索管理中可以被编辑、分配和跟踪。但当前我们也发现一个问题，管理员和销售拥有相同的权限，他们可以看相同的页面。因此本任务中，我们需要区分管理员和销售他们所拥有的数据展现，管理员可以操作添加数据，且可以编辑及把线索分配给销售。销售的角色在本项目中，仅可登录且对分配给自己的线索进行展示和跟踪。

任务要求：
1. 销售后台对用户管理相关的页面及导航不可见。
2. 销售角色打开用户管理相关网页时候，显示 403 禁止访问页面。
3. 销售在线索编辑后台，仅有提交跟踪内容功能，对线索的编辑和分配不可视。

任务提示：
1. 在之前筛选用户数据的时候，我们可以获取到用户的信息包括角色，并防止在 res.locals 中，在试图模版中我们可以通过 if 语法判断当前用户的角色 id 来觉得那些部分的试图对该情况不可显示。
2. 在中间件总，我们完成了一个必须登录的一个中间层，这次我们可以相似的完成这个必须用户是管理员的方法，并配置在用户页面相关的路由中，如果用户不具备权限，则渲染显示 403 信息。

### 3-10 项目优化
此时此刻，我们已经按需求完成了内容。但很多情况下的需求不明确，或者考虑不够周期相关的问题，我们还需要对项目进行一次修改。在本次任务中，你可以更具你的想法，对这个项目不满意的功能进行修改，可以是样式、可以是逻辑，随意发挥。

任务要求：
1. 销售可编辑线索状态及备注

任务提示：
1. 更具角色的判断展示销售角色中显示的内容
2. 样式可以进一步做好看一点
3. 可以做一下数据的倒叙
4. 添加数据筛选的功能加满分

## 4-总结页
通过本项目的学习，我们学会了在 Node.js 环境中使用 Express 快速搭建服务框架，并熟悉简单的 MySQL 数据库操作，可以完成数据的增删改查以及连表查询数据。同时，我们还对后端中 MVC 有深入的了解和实际的运用，懂得了在一个项目中数据是如何从数据库渲染到页面，页面是如何与服务端进行交互从而影响数据的变化。


 

 


