<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>登录|美团外卖</title>
    <link rel="stylesheet" href="../CSS/CustomerLoginPage.css"/>
    <script src="../JS/jquery-3.3.1.js"></script>
</head>
<body>
    <!--美团图标-->
    <div class="top">
        <div class="bg_top"></div>
    </div>

    <!--主内容区-->
    <div class="content">
        <div class="content_left">
            <img src="../res/img/CustomerLoginPage/login_content.png" width="480px" height="370px"/>
        </div>
        <div class="content_right">
            <span id="check"></span>
            <p>账号登录</p>
            <input type="text" placeholder="用户名" class="account" />
            <input type="password" placeholder="密码" class="password"/>
            <div>
                <input type="checkbox"/><span style="font-size: 10px">7天内自动登录</span>
            </div>
            <input type="button" value="登录" class="login_button" style="background-color: #FFD705;border-color: #FFD705"/>
            <p>还没有账号？<a href="CustomerRegisterPage.html">免费注册</a></p>
        </div>
    </div>


    <script>
//        点击图标跳到主页
        $(document).ready(function(){
            $(".bg_top").click(function(){
                window.location.replace("CustomerIndex.html");
            })
        })

//        检查账号和密码是否为空
        $(document).ready(function(){
            $(".login_button").click(function(){
                var account = $(".account").val();
                var password = $(".password").val();
                if(account.trim() == "" && password.trim() == ""){
                    $("#check").text("请输入用户名和密码").css('color','red');
                }else if(account.trim() == ""){
                    $("#check").text("请输入用户名").css('color','red');
                }else if(password.trim() == ""){
                    $("#check").text("请输入密码").css('color','red');
                }
            })
        })
    </script>
</body>
</html>