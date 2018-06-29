#儿童摄影系统
##运行环境
- JDK 1.8
- Tomcat 8.5
- MySQL 5.7
##主要技术
- SpringBoot
- MyBatis
- BootStrap
##安装步骤
1. 解压本项目
2. 创建数据库photo,将解压目录sql/photo.sql中的脚本导入
3. 更新启动文件application.yml中的数据库连接配置
4. 通过Maven打包或者IDE直接运行
5. http://localhost:2018访问主页，端口号可以在配置文件中修改
###后台模块
登录路径http://localhost:2018/manage/login.html
默认账号admin
默认密码admin
通过md5加密