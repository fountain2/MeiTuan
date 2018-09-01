<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>确认订单</title>
    <link href="../CSS/CustomerOrderPage.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../JS/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../JS/CustomerOrderPage/CustomerOrderPage.js"></script>
</head>
<body>
<div class="all">
    <!--顶部导航栏部分Start-->
    <div class="top_part1_bg">
        <div class="top_content_width">
            <div class="address">什么区某某街</div>
            <a href="" class="changeAddr">切换地址</a>
            <!--未登录时显示登录|注册-->
            <a href="" class="loginButton">登录</a>
            <a href="" class="registerButton">注册</a>
            <!--已登录时显示账号名|切换账号-->
            <a href="" class="changeCustomer">切换账号</a>

            <div class="customerName">账号名suibian</div>
        </div>
    </div>
    <div class="top_part2_bg">
        <div class="top_content_width">
            <div class="logoImg"></div>
            <div class="search_bg">
                <input title="" placeholder="搜索店铺,美食" type="text" class="searchBar"/>
                <a href="" class="searchButton">图标</a>
            </div>
            <ul class="item">
                <li>
                    <a href="">首页</a>
                </li>
                <li>
                    <a href="">个人中心</a>
                </li>
                <li>
                    <a href="">成为商家</a>
                </li>
            </ul>
        </div>
    </div>
    <!--顶部导航栏部分End-->

    <!--悬浮置顶按钮-->
    <div class="toTop">^</div>
    <!--内容区-->
    <div class="content_bg">
        <!--首行订单路径-->
        <div class="orderPath">
            <a href="" class="shopName">这里写个长一点的店名</a>
            &gt;&nbsp;<span>确认购买</span>
        </div>
        <!--左侧菜单列表-->
        <div class="content_left_bg">
            <div class="goodsTitle">
                <div class="goodsTitle_left">菜品</div>
                <div class="goodsTitle_right">价格/份数</div>
            </div>
            <ul class="goodsList">
                <li>奇奇怪怪的菜</li>
                <li>神神秘秘的汤</li>
                <li>配送费</li>
            </ul>
            <ul class="priceList">
                <li>￥<span>22*3</span></li>
                <li>￥<span>8</span></li>
                <li>￥<span>3</span></li>
            </ul>
            <div class="priceOfAll">
                <div class="priceOfAll_left">合计</div>
                <div class="priceOfAll_right">
                    ￥<span>77</span>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <!--右侧地址信息等列表-->
        <div class="content_right_bg">
            <div class="addressTitle">
                请选择你的收货地址
                <div class="addAddress">
                    <span>+</span>添加新地址
                </div>
            </div>
            <!--这部分为添加地址列表的部分，需后台传入数据-->
            <ul class="customerInfList_bg">
                <li>
                    <div class="firstRow">
                        <span class="cName">方芳芳</span>&nbsp;
                        <span class="cSex">女士</span>&nbsp;:
                        <span class="cPhone">01987654321</span>
                        <span class="deleteButton">删除</span>
                        <span class="updateButton">修改</span>
                    </div>
                    <div class="secondRow">
                        <span class="cAddress">随便什么地址名</span>
                        <span class="checked">已选中</span>
                    </div>
                </li>
                <li>
                    <div class="firstRow">
                        <span class="cName">范.达克尼斯</span>&nbsp;
                        <span class="cSex">先生</span>&nbsp;:
                        <span class="cPhone">12345678910</span>
                        <span class="deleteButton">删除</span>
                        <span class="updateButton">修改</span>
                    </div>
                    <div class="secondRow">
                        <span class="cAddress">一段很长很长的地址名</span>
                        <span class="checked">已选中</span>
                    </div>
                </li>
                <li>
                    <div class="firstRow">
                        <span class="cName">碧莉.海琳敦</span>&nbsp;
                        <span class="cSex">女士</span>&nbsp;:
                        <span class="cPhone">10086100868</span>
                        <span class="deleteButton">删除</span>
                        <span class="updateButton">修改</span>
                    </div>
                    <div class="secondRow">
                        <span class="cAddress">神马地址名</span>
                        <span class="checked">已选中</span>
                    </div>
                </li>
            </ul>
            <div class="showMoreButton">显示所有地址▼</div>
            <div class="toShopText_bg">
                给商家留言：
                <input title="" name="" placeholder="加辣，不要盐等要求。" value="" type="text"/>
            </div>
            <div class="payWay_bg">
                付款方式：
                <span class="way1">餐到付款</span>
                <span class="way2">在线支付</span>
            </div>
            <div class="readyToOrder">
                <div class="sumPrice">
                    您需支付<span>￥1234.00</span>
                </div>
                <div class="readyButton">确认下单</div>
            </div>
        </div>
    </div>

    <!--弹出框-->
    <!--添加新地址的弹窗-->
    <div class="box_bg1">
        <div class="newAddress_box">
            <div class="newAddress_box_title">
                填写收货信息<span>X</span>
            </div>
            <form action="">
                <ul class="newAddress_left">
                    <li><span>*</span>联系人：</li>
                    <li></li>
                    <li><span>*</span>手机号码：</li>
                    <li><span>*</span>收货地址：</li>
                </ul>
                <ul class="newAddress_right">
                    <li>
                        <input title="" type="text" name="CName" placeholder="请输入姓名"/>
                    </li>
                    <li>
                        <span>*</span>
                        <input title="" type="radio" name="CSex" value="1"/>&nbsp;先生&nbsp;&nbsp;&nbsp;&nbsp;
                        <input title="" type="radio" name="CSex" value="2"/>&nbsp;女士
                    </li>
                    <li>
                        <input title="" type="text" name="CPhone" placeholder="请输入11位手机号码"/>
                    </li>
                    <li>
                        <input title="" type="text" name="CAddress" placeholder="请输入详细地址"/>
                    </li>
                </ul>
                <div class="saveButton">保存</div>
                <div class="cancelButton">取消</div>
            </form>
        </div>
    </div>
    <!--删除地址的弹窗-->
    <div class="box_bg2">
        <div class="deleteAddress_box">
            <div class="deleteAddress_box_title">
                删除地址<span>X</span>
            </div>
            <p class="deleteText">确定删除该地址吗？</p>
            <div class="yesButton">确定</div>
            <div class="noButton">取消</div>
        </div>
    </div>
</div>
</body>
</html>