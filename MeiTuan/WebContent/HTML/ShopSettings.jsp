<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>店铺设置</title>
    <link href="../CSS/ShopSettingPage.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../JS/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../JS/ShopSettingPage/ShopSettingPage.js"></script>
</head>
<body>
<div class="all">
    <!--顶部导航栏部分Start-->
    <div class="top_bg">
        <img class="top_logo" src="../img/banner_logo.png"/>
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
    <!--顶部导航栏部分End-->

    <!--内容部分Start-->
    <div class="content_bg">
        <div class="content">
            <!--店铺设置栏-->
            <div class="shopInf_bg">
                <!--左侧设置-->
                <div class="shopInf_bg_left">
                    <form action="" name="" method="post">
                        <p class="title title_xy">店铺信息</p>
                        <div class="shopImg_box">
                            <img src="" class="shopImg"/>
                            <a href="">点击修改店面图</a>
                        </div>
                        <ul class="shopInf1">
                            <li>店铺名称：</li>
                            <li>商家电话：</li>
                            <li>营业时间：</li>
                            <li>起送价：￥</li>
                            <li>配送价：￥</li>
                        </ul>
                        <ul class="shopInf2">
                            <li>
                                <input title="" type="text" name="ShopName" value="嘿嘿面馆"/>
                                <span>提示消息</span>
                            </li>
                            <li>
                                <input title="" type="text" name="ShopPhone" value="12345678901"/>
                                <span>提示消息</span>
                            </li>
                            <li>
                                <select class="start" name="" title="">
                                </select>
                                ~
                                <select class="end" title="">
                                </select>
                                <span>提示消息</span>
                            </li>
                            <li>
                                <input title="" type="text" name="NeedPrice" value="10"/>
                                <span>提示消息</span>
                            </li>
                            <li>
                                <input title="" type="text" name="AddedPrice" value="0"/>
                                <span>提示消息</span>
                            </li>
                        </ul>
                        <input type="submit" class="shopButton shopButton_xy" value="保存修改"/>
                        <input type="reset" class="shopButton" value="取消修改"/>
                    </form>
                </div>
                <!--右侧设置-->
                <div class="shopInf_bg_right">
                    <p class="title">店铺状态</p>
                    <button class="stateButton">营业中</button>
                    <button class="stateButton">休息中</button>
                    <button class="stateButton">接受预订中</button>
                    <p class="title temp">自动切换店铺状态</p>
                    <div class="autoSwitch_box">
                        <button class="autoSwitch">开启</button>
                        <button class="autoSwitch">关闭</button>
                        <p class="text">开启后，将根据设定的营业时间自动切换店铺状态。</p>
                    </div>
                </div>
                <div class="shopInf_bg_bottom">
                    <p class="title">其他设置</p>
                    <button class="closeSwitch">关停店铺</button>
                    <p class="text">关停店铺后，顾客将再也无法看到您的店面链接。</p>
                </div>
            </div>
        </div>
    </div>
    <!--内容部分End-->
</div>
</body>
</html>