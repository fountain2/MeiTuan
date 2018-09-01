<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>主页|美团外卖</title>
    <link rel="stylesheet" href="../CSS/CustomerIndex.css"/>
    <script src="../JS/jquery-3.3.1.js"></script>
</head>
<body>
    <div class="regist">
        <!--背景图片-->
        <div class="bg_pic">
            <!--顶部导航-->
            <div class="top_nav">
                <div class="logo"></div>
                <div class="btns">
                    <input type="button" id="regist" value="注册"/>
                    <input type="button" id="login" value="登录"/>
                    <input type="button" id="apply" value="美团开店申请"/>
                </div>
            </div>

            <!--搜索边框-->
            <div class="search">
                <input type="text" placeholder="输入地址搜索周边美食"/>
                <input type="button" id="search" value="搜索"/>
            </div>
        </div>

        <!--商家入驻的信息-->
        <div class="new_merchant">
            <div id="text">
                <h3>商家入驻</h3>
                <p>平台优势，成单量更有保障</p>
            </div>
            <div id="new_apply">
                <a href="">美团外卖开店申请></a>
            </div>
        </div>
    </div>

    <script>
//        点击注册跳到注册界面
        $(document).ready(function(){
            $("#regist").click(function(){
                window.location.replace("CustomerRegisterPage.html");
            })
        })

//        点击登录跳到登录界面
        $(document).ready(function(){
            $("#login").click(function(){
                window.location.replace("CustomerLoginPage.html");
            })
        })
    </script>

</body>
</html>