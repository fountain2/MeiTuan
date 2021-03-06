<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="../CSS/SellerLoginPage.css" rel="stylesheet" type="text/css"/>
    <link href="../res/icon/SellerRegisterPage/iconfont.css" type="text/css" rel="stylesheet"/>
    <script src="../JS/jquery-3.3.1.js"></script>
    <script src="../JS/SellerLoginPage/SellerLoginPage.js"></script>
</head>
<body>
    <div class="container">
        <!--
          导航栏部分
      -->
        <div class="top_bg">
            <img class="top_logo" src="../res/img/SellerLoginPage/banner_logo.png"/>
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
            <div class="content_top">
                <h4>账号密码登录</h4>
            </div>
            <div class="content_main">
                <!-- 登录失败提示-->
                <div class='error' style='display: none'><img src='../res/img/SellerRegisterPage/error.png'><p>登录失败</p></div>
                <form>
                    <!-- 账号输入框-->
                    <div class="icon_box">
                        <label class="icon_label" for="account">
                            <i class="iconfont icon-zhanghu"></i>
                        </label>
                        <input type="text" placeholder="账号" id="account" maxlength="20" />
                    </div>
                    <!-- 密码输入框-->
                    <div class="icon_box">
                        <label class="icon_label" for="psw">
                            <i class="iconfont icon-mima"></i>
                        </label>
                        <input type="password" placeholder="密码" id="psw" maxlength="16"/>
                    </div>
                    <!-- 登陆按钮-->
                    <input type="submit" value="登录" id="login"/>
                    <!--跳转到注册-->
                    <div class="hint_box">
                    <a href="SellerRegisterPage.html" class="hint">注册账号，免费入驻</a>
                    </div>
                </form>
            </div>
        </div>

    </div>
</body>
</html>