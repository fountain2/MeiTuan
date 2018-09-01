<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link type="text/css" rel="stylesheet" href="../CSS/CustomerChooseGoodsPage.css" />
    <link type="text/css" rel="stylesheet" href="../res/icon/shop_detail/iconfont.css" />
    <link type="text/css" rel="stylesheet" href="../res/icon/collect/iconfont.css" />
    <link type="text/css" rel="stylesheet" href="../res/icon/go_top/iconfont.css" />
    <link type="text/css" rel="stylesheet" href="../res/icon/cart/iconfont.css" />
    <script type="text/javascript" src="../JS/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../JS/CustomerChooseGoodsPage/detail.js"></script>
</head>
<body>
    <div id="container">
        <div id="top"></div>
        <div id="top_nav"></div>
        <div id="shop_head">
            <div id="shop_pic"></div>
            <h3>xxx&nbsp;<span></span></h3>
            <div class="hide">
                <p class="iconfont icon-shijian">营业时间&nbsp;xxx</p>
                <p class="iconfont icon-dingwei">地址&nbsp;xxx</p>
                <p class="iconfont icon-dianhua">联系电话&nbsp;xxx</p>
            </div>
            <div>起送<br /><b>xx</b>元</div>
            <div>配送费<br /><b>xx</b>元</div>
            <a>收藏本店<span class="iconfont icon-shoucang"></span></a>
        </div>
        <div id="type">
            <ul>
                <li>澳门烧肉双拼饭 </li>
                <li>澳门烧肉双拼饭 </li>
                <li>澳门烧肉双拼饭 </li>
                <li>澳门烧肉双拼饭 </li>
                <li>澳门烧肉双拼饭 </li>
                <li>澳门烧肉双拼饭 </li>
            </ul>
            <div class="clear"></div>
        </div>
        <div class="content">
            <h2>xxx</h2>
            <ul>
                <li>
                    <div class="pic"></div>
                    <h3>xxx</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
                <li>
                    <div class="pic"></div>
                    <h3>xxx</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
                <li>
                    <div class="pic"></div>
                    <h3>xxx</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
                <li>
                    <div class="pic"></div>
                    <h3>xxx</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
                <li>
                    <div class="pic"></div>
                    <h3>111</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
                <li>
                    <div class="pic"></div>
                    <h3>xxx</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
                <li>
                    <div class="pic"></div>
                    <h3>xxx</h3>
                    <p>21</p>元
                    <a class="addCart">+</a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
        <a id = "go_top" class = "iconfont icon-fanhuidingbu3"></a>
        <div id="cart" >
            <div class="left iconfont icon-gouwuche">
                <span id="total">总计:￥</span>
            </div>
            <a onclick="sum()">立即下单</a>
        </div>
        <div class="detail">
            <p>
                购物车
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a class="clean">清空菜品</a>
            </p>
        </div>
    </div>
</body>
</html>