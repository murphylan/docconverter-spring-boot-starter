## DocConverter - 简单的Demo - Spring Boot工程

这个WebApp的目的是展示文档转换的Demo，帮助用户了解我们的服务。

<img width="600" height="300" src="https://github.com/murphylan/docconverter-spring-boot-starter/blob/master/docconvert.png">

### 运行这个Demo有2个方式

#### 方式1, 手工部署
1. 准备一台安装好LibreOffice或者OpenOffice的机器，系统不限（windows, *uix or Mac）
2. 下载此工程，拷贝文件build／libs/docconverter-sample-spring-boot.war到你的任何一个安装了Jvm(版本大于或者等于1.7)的机器上，在命令行中运行命令：
```
java -jar docconverter-sample-spring-boot.war
```
3. 打开浏览器，输入网址： 

```
http://localhost:8080/
```

#### 方式2, Docker部署（推荐） 
1. 准备一台安装好Docker的机器，系统不限（windows, *uix or Mac）
2. 下载此工程，拷贝工程到你的Docker的机器上，在命令行中运行命令： 
```Shell
 docker build -t docconvert .
 docker run -p 8080:8080 docconvert 
```

3. 打开浏览器，输入网址： 
```
http://你的机器ip:8080/
```


感谢关注我们的产品!! 更多内容见：[Docconverter service](http://39.108.124.141/)
