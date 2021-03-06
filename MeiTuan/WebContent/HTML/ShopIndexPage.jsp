<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商家中心</title>
    <link type="text/css" href="../CSS/ShopIndexPage.css" rel="stylesheet">
    <script type="text/javascript" src="../JS/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../JS/ShopIndexPage/ShopIndexPage.js"></script>
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
            <!--店铺状态栏-->
            <div class="title">
                店铺信息
                <span>-</span>
            </div>
            <div class="shopState_bg box_bg">
                <div class="shopState_bg_left">
                    <img src="" class="shopImg"/>
                    <ul class="shopInf1">
                        <li>店铺名称：</li>
                        <li>嘿嘿面馆</li>
                        <li>商家电话：</li>
                        <li>12345678901</li>
                        <li>营业时间：</li>
                        <li>9:00~21:00</li>
                    </ul>
                    <ul class="shopInf2">
                        <li>起送价：￥</li>
                        <li>10</li>
                        <li>配送价：￥</li>
                        <li>0</li>
                    </ul>
                    <p class="tips">已开启“自动切换店铺状态”，营业状态会随设定的营业时间自动切换。(在“店铺设置”中可修改该设置)</p>
                </div>
                <div class="shopState_bg_right">
                    <p>店铺状态</p>
                    <button>营业中</button>
                    <button>休息中</button>
                    <button>接受预订中</button>
                </div>
            </div>
            <div class="boxBottom"></div>
            <!--月销记录栏-->
            <div class="title">
                月销记录
                <span>-</span>
            </div>
            <div class="salesRecord_bg box_bg">
                <div class="salesRecord_bg_left">
                    <div class="salesRecord_img_title">最近半年-热销商品列表</div>
                    <div class="salesRecord_data">
                        <ul class="column">
                            <li>商品名</li>
                            <li>什么鬼饭</li>
                            <li>随便面</li>
                            <li>瞎写的炒粉</li>
                            <li>奇怪的料理</li>
                            <li>哈哈饮品</li>
                            <li>嘿嘿面条</li>
                        </ul>
                        <ul class="column">
                            <li>月份</li>
                            <li>2017.08</li>
                            <li>2017.09</li>
                            <li>2017.10</li>
                            <li>2017.11</li>
                            <li>2017.12</li>
                            <li>本月</li>
                        </ul>
                        <ul class="column">
                            <li>月销量</li>
                            <li>1234</li>
                            <li>123</li>
                            <li>12</li>
                            <li>1</li>
                            <li>4123</li>
                            <li>12342</li>
                        </ul>
                    </div>
                </div>
                <div class="salesRecord_img_bg">
                    <div class="salesRecord_img_title">最近半年-月销量统计图</div>
                    <div class="yArea">
                        <ul class="yData">
                            <li>100</li>
                            <li>75</li>
                            <li>50</li>
                            <li>25</li>
                            <li>0</li>
                        </ul>
                        <ul class="yLine">
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <ul class="dataArea">
                        <li>22200</li>
                        <li>123</li>
                        <li>312</li>
                        <li>21</li>
                        <li>31</li>
                        <li>3</li>
                    </ul>
                    <ul class="xArea">
                        <li>2017.08</li>
                        <li>2017.09</li>
                        <li>2017.10</li>
                        <li>2017.11</li>
                        <li>2017.12</li>
                        <li>本月</li>
                    </ul>
                </div>
            </div>
            <div class="boxBottom"></div>
            <!--新的订单栏-->
            <div class="newOrder"></div>
            <div class="title" title="有未接订单……">
                新的订单
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
                            <button>已送出</button>
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
                            <button>已送出</button>
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
    <!--内容部分End-->
</div>
</body>
</html>