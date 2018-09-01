<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>注册|美团外卖</title>
    <link rel="stylesheet" href="../CSS/CustomerRegisterPage.css"/>
    <script src="../JS/jquery-3.3.1.js"></script>
</head>
<body>
    <!--顶部的美团图标-->
    <div class="top">
        <div class="bg_top"></div>
    </div>
    <!--水平线-->
    <hr/>
    <!--主内容区-->
    <div class="content">
        <div>
            手机号：<input type="number" class="tel"/><span id="num_span"></span>
        </div>
        <div>
            用户名：<input type="text" class="new_account"/><span id="acc_span"></span>
        </div>
        <div>
            密码：<input type="password" class="new_password"/><span id="pass_span"></span>
        </div>
        <div>
            再次输入密码： <input type="password" class="new_password2"/><span id="pass2_span"></span>
        </div>
        <div>
            <input type="submit" value="同意以下协议并注册" class="regist_button"/>
        </div>
        <a href="">《美团用户协议》</a>
    </div>


    <!--对输入的数据进行判断-->
    <script>

        //点击图标跳转到主页
        $(document).ready(function(){
            $(".bg_top").click(function(){
                window.location.replace("CustomerIndex.html");
            })
        })

        //判断手机号格式是否正确
        $(document).ready(function(){
            $(".tel").blur(function(){
                var tel = $(this).val();
                if(tel.length != 11){
                    $("#num_span").text("请输出正确的手机号").css('color','red');
                }
            })
        })

        //判断输入的密码是否为空
        $(document).ready(function(){
            $(".new_password").blur(function(){
                var password = $(this).val();
                if($.trim(password) == ""){
                    $("#pass_span").text("请输入密码").css('color','red');
            }
            })
        })

        //判断两次输入的密码是否一致
        $(document).ready(function(){
            $(".new_password2").blur(function(){
                var pd = $(".new_password").val();
                var pd2 = $(".new_password2").val();
                if(pd != pd2){
                    $("#pass2_span").text("两次输入的密码不一致").css('color','red');
                }
            })
        })
    </script>

</body>
</html>