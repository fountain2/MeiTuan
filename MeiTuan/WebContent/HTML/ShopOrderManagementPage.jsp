<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head lang="en">
    <meta charset="UTF-8">
    <title>订单中心</title>
    <link type="text/css" href="../CSS/ShopOrderManagementPage.css" rel="stylesheet">
    <script type="text/javascript" src="../JS/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../JS/ShopOrderManagementPage/ShopOrderManagementPage.js"></script>
</head>
<body>
<div class="wrapper">
    <div class="header">
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
    </div>
    <div class="content">
        <div class="concolor">
            <!--新的订单栏-->
            <div class="newOrder"></div>
            <div class="title" title="有未接订单……">
                订单管理
                <span>-</span>
            </div>
            <div class="orderList_bg box_bg">
                <div class="aOrderBox">
                    <div class="orderHead">2018/08/23&nbsp;&nbsp;20:36</div>
                    <div class="aOrderBox_left">
                        <div class="goodsListTitle">订单详情</div>
                        <div class="goodsListBox">
                            <ul class="goodsName">
                                <li>肯得起鸡排</li>
                                <li>麦当纳汉堡</li>
                                <li>名字很长很长的一个商品</li>
                            </ul>
                            <ul class="goodsNum">
                                <li>2</li>
                                <li>1</li>
                                <li>3</li>
                            </ul>
                            <ul class="goodsPrice">
                                <li>￥11</li>
                                <li>￥123</li>
                                <li>￥9</li>
                            </ul>
                        </div>
                        <div class="numOfPay">
                            实际支付:￥<span>143</span>
                        </div>
                        <div class="customerInf">
                            <ul class="customerInf_left">
                                <li>地址：</li>
                                <li>姓名：</li>
                                <li>电话：</li>
                                <li>备注：</li>
                            </ul>
                            <ul class="customerInf_right">
                                <li>xx市yy区zz路hh号</li>
                                <li>范·达克尼斯</li>
                                <li>12345678910</li>
                                <li>无</li>
                            </ul>
                        </div>
                    </div>
                    <div class="aOrderBox_right">
                        <div class="buttonColumn">
                            <button>接单</button>
                        </div>
                        <div class="orderState">
                            <div class="orderStateTitle">订单状态</div>
                            <ul class="orderStateList">
                                <li><span></span>订单提交，等待接单</li>
                                <li><span></span>商家接单，准备商品</li>
                                <li><span></span>商品完成，等待配送</li>
                                <li><span></span>商品送达，订单完成</li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <div class="aOrderBox">
                    <div class="orderHead">2018/08/23&nbsp;&nbsp;20:36</div>
                    <div class="aOrderBox_left">
                        <div class="goodsListTitle">订单详情</div>
                        <div class="goodsListBox">
                            <ul class="goodsName">
                                <li>肯得起鸡排</li>
                                <li>麦当纳汉堡</li>
                                <li>名字很长很长的一个商品</li>
                            </ul>
                            <ul class="goodsNum">
                                <li>2</li>
                                <li>1</li>
                                <li>3</li>
                            </ul>
                            <ul class="goodsPrice">
                                <li>￥11</li>
                                <li>￥123</li>
                                <li>￥9</li>
                            </ul>
                        </div>
                        <div class="numOfPay">
                            实际支付:￥<span>143</span>
                        </div>
                        <div class="customerInf">
                            <ul class="customerInf_left">
                                <li>地址：</li>
                                <li>姓名：</li>
                                <li>电话：</li>
                                <li>备注：</li>
                            </ul>
                            <ul class="customerInf_right">
                                <li>xx市yy区zz路hh号</li>
                                <li>范·达克尼斯</li>
                                <li>12345678910</li>
                                <li>无</li>
                            </ul>
                        </div>
                    </div>
                    <div class="aOrderBox_right">
                        <div class="buttonColumn">
                            <button>接单</button>
                        </div>
                        <div class="orderState">
                            <div class="orderStateTitle">订单状态</div>
                            <ul class="orderStateList">
                                <li><span></span>订单提交，等待接单</li>
                                <li><span></span>商家接单，准备商品</li>
                                <li><span></span>商品完成，等待配送</li>
                                <li><span></span>商品送达，订单完成</li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="boxBottom"></div>
        </div>
    </div>
</div>
</body>
</html>  