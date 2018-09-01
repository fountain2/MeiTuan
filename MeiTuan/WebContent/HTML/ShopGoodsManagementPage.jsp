<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>		
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../CSS/ShopGoodsManagementPage.css" type="text/css">
    <link rel="stylesheet" href="../res/icon/ShopGoodsManagementPage/iconfont.css" type="text/css">
    <script src="../JS/jquery-3.3.1.js"></script>
    <script src="../JS/ShopGoodsManagementPage/ShopGoodsManagementPage.js"></script>

</head>
<body>
<div class="container">
    <!--
        导航栏部分
    -->
    <div class="top_bg">
        <img class="top_logo" src="../res/img/ShopGoodsManagementPage/banner_logo.png"/>
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
    <!--
        内容区部分
    -->
    <div class="content">
        <div class="content_top">
            <h2>商品管理</h2>
        </div>
        <!-- 内容区主要部分-->
        <div class="content_main">
            <!-- 增加标签按钮-->
            <div class="tags_add">
                <i class="iconfont icon-jiahao"></i>
            </div>
            <!-- 弹出框--商品添加-->
            <div id="tags_popup">
                <div id="tags_popup_content">
                    <div id="tags_popup_main">
                        <h4>请输入菜品信息</h4>

                        <p class="hint hint_Good_Name">请输入基本信息</p>

                        <div class="hint_box Goods_name_box">
                            <p class="goods_name_hint">请输入菜品名称（请不要超过30个字符）</p>
                            <input type="text" name="goods_name_input" id="goods_name_input">

                            <div class="error" id='error_name' style="display: none"><img
                                    src='../res/img/SellerRegisterPage/error.png'>

                                <p>菜品名应该由1到30个字符的中文或字母、数字、下划线组成
                                </p></div>
                            <br/>

                            <p class="goods_price_hint">请输入菜品价钱（只能9999以下的数字）</p>
                            <input type="text" name="goods_price_input" id="goods_price_input">

                            <div class="error" id='error_price' style="display: none"><img
                                    src='../res/img/SellerRegisterPage/error.png'>

                                <p>菜品价格最高为9999
                                </p></div>
                            <br/>
                        </div>
                        <br/>

                        <p class="hint hint_pick_Good_img">请选择菜品图片</p>

                        <div class="hint_box a-upload_box">
                            <p class="img_format_hint">请选择图片格式的文件（jp2,jpg/jpe/jpeg,png,tiff/tif）</p>
                            <a href="javascript:void(0)" class="a-upload">

                                <img id="upload_img"
                                     src="../res/img/ShopGoodsManagementPage/ShopGoodsManagementPage_imgupload_bg.png">
                                <input type="file" id="goods_img_input"
                                       accept="image/jp2,image/jpeg,image/png,image/tiff">
                            </a>
                        </div>
                        <div class="goods_input_button_box">
                            <button class="goods_input_button confirm" id="confirm">确认</button>
                            <button class="goods_input_button cancel" id="cancel">取消</button>
                        </div>

                    </div>
                </div>
            </div>

            <!-- 弹出框--标签添加-->
            <div id="tags_add_popup">
                <div id="tags_add_popup_content">
                    <div id="tags_add_popup_main">
                        <h4>请输入菜品种类名称</h4>
                        <input type="text" name="goods_tags_name_input" id="goods_tags_name_input">

                        <div class="goods_input_button_box tags_buttons">
                            <button class="goods_input_button confirm" id="tags_confirm">确认</button>
                            <button class="goods_input_button cancel" id="tags_cancel">取消</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>