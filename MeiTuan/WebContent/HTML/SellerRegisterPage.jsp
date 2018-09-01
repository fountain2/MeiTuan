<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title></title>
    <link type="text/css" rel="stylesheet" href="../CSS/SellerRegisterPage.css"/>
    <link type="text/css" rel="stylesheet" href="../res/icon/SellerRegisterPage/iconfont.css"/>
    <script src="../JS/jquery-3.3.1.js"></script>
    <script src="../JS/SellerRegisterPage/SellerRegisterPage.js"></script>
</head>
<body>
<div class="container">
    <!--
          导航栏部分
      -->
    <div class="top_bg">
        <img class="top_logo" src="../res/img/SellerRegisterPage/banner_logo.png"/>
        <ul>
            <li>
                <a href="">店铺首页</a>
            </li>
            <li>
                <a href="">商品管理</a>
            </li>
            <li>
                <a href="">订单管理</a>
            </li>
            <li>
                <a href="">店铺设置</a>
            </li>
            <!--<li>
                <a href="">消息中心</a>

                <div class="newMessage"></div>
            </li>-->
            <li>
                <div class="userIcon">☻</div>
                <p class="userName">Darkness</p>

                <div class="userOperate">
                    <!--<a href="">切换店铺</a>-->
                    <a href="">退出登录</a>
                </div>
            </li>
        </ul>
    </div>
    <!--内容区部分-->
    <div class="main_content">
        <!-- 内容区头部-->
        <div class="content_top">
            <a href="../HTML/SellerLoginPage.html">已有账号，去登录 >></a>
            <h4>注册</h4>
        </div>
        <!-- 内容区主要部分-->
        <div class="content_main">
            <form >
                <!-- 账号输入框-->
                <div class="icon_box">
                    <label class="icon_label" for="account">
                        <i class="iconfont icon-zhanghu"></i>
                    </label>
                    <input type="text" placeholder="账号，5-20位数字、字母或下划线" id="account" maxlength="20" />
                </div>
                <!-- 密码输入框-->
                <div class="icon_box">
                    <label class="icon_label" for="psw">
                        <i class="iconfont icon-mima"></i>
                    </label>
                    <input type="password" placeholder="密码，6-16位，必须包含数字和字母" id="psw" maxlength="16"/>
                </div>
                <!-- 确认密码输入框-->
                <div class="icon_box">
                    <label class="icon_label" for="cPsw">
                        <i class="iconfont icon-mima"></i>
                    </label>
                    <input type="password" placeholder="确认密码，必须与密码一致" id="cPsw"  maxlength="16"/>
                </div>
                <!-- 手机输入框-->
                <div class="icon_box">
                    <label class="icon_label" for="cell">
                        <i class="iconfont icon-shouji"></i>
                    </label>
                    <input type="text" placeholder="账号使用者手机" id="cell"  maxlength="11">
                </div>
                <!-- 确认注册按钮-->
                <input type="submit" value="注册" id="register"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>