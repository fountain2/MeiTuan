<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../CSS/ShopRegisterPage.css"/>
    <script src="../JS/jquery-3.3.1.js"></script>
    <script src="../JS/ShopRegisterPage/ShopRegisterPage.js"></script>
    <script src="../JS/ShopRegisterPage/areaJson.js"></script>
    <script src="../JS/ShopRegisterPage/json2select.min.js"></script>
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
        <div class="content_form">
            <div class="content_top">店铺信息</div>
            <div class="content_center">
                <form action="">
                    <div>
                        <lable class="lable_left star">门店名称</lable>
                        <input type="text" placeholder="请输入门店名称,不超过15个字"/>
                        <span class="form_tip">请填写门店名称</span>
                    </div>

                    <div>
                        <lable class="lable_left star">联系人</lable>
                        <input type="text" placeholder="请输入真实姓名,不能超过10个字"/>
                        <span class="form_tip">请填写联系人</span>
                    </div>
                    <div>
                        <lable class="lable_left star">外卖电话</lable>
                        <input type="text" placeholder="请输入手机号"/>
                        <span class="form_tip">请填写外卖电话</span>
                    </div>
                    <div>
                        <lable class="lable_left star">经营品类</lable>


                        <select name="storeType" class="type1" id="s1">
                            <option value="美食">美食</option>
                            <option value="甜点饮品">甜点饮品</option>
                            <option value="生活超市">生活超市</option>
                            <option value="生鲜果蔬">生鲜果蔬</option>
                        </select>

                        <select name="storeType2" class="type1">
                        </select>
                    </div>

                    <div class="hr_dotted"></div>

                    <!--省市县-->
                    <div>
                        <lable class="lable_left star">门店区域</lable>


                        <div id="province"></div>
                        <span class="form_tip">请填写门店区域</span>

                        </select>
                    </div>

                    <div>
                        <lable class="lable_left star">门店地址</lable>
                        <input type="text" placeholder="详细至门牌号, 与营业执照地址一致"/>
                        <span class="form_tip">请填写门店地址</span>
                    </div>

                    <div>
                        <lable class="lable_left star">门店坐标</lable>
                        <div style="width: 710px;height: 314px;border: 1px solid red;display: inline-block;vertical-align:text-top" ;></div>
                    </div>

                    <div class="hr_dotted"></div>

                    <div class="imgdiv">
                        <lable class="lable_left star">门脸图</lable>
                        <div class="imgclass">
                            <ul >
                                <li style="width: 275.41px;">需拍出完整门匾、门框（建议正对门店2米处拍摄）</li>
                            </ul>
                            <input type="file" accept="image/jpg,image/jpeg,image/png" class="imgupload">
                            <img class="modelimg" src="../res/img/ShopRegisterPage/ShopRegisterPage_imgupload_bg.png" alt=""/>
                            <div class="modelimglow">示例</div>
                            <div class="modelimg2">
                                <div class="modelimg3"></div>
                            </div>
                        </div>
                    </div>

                    <div class="imgdiv">
                        <lable class="lable_left star">店内环境图</lable>
                        <div class="imgclass">
                            <ul >
                                <li style="width: 275.41px;">需真实反映用餐环境（收银台、用餐桌椅）</li>
                            </ul>
                            <input type="file" accept="image/jpg,image/jpeg,image/png" class="imgupload">
                            <img class="modelimg" src="../res/img/ShopRegisterPage/ShopRegisterPage_imgupload_bg.png" alt=""/>
                            <div class="modelimglow">示例</div>
                            <div class="modelimg2">
                                <div class="modelimg3"></div>
                            </div>
                        </div>
                    </div>

                    <div class="imgdiv">
                        <lable class="lable_left star">店铺商标图(选填)</lable>
                        <div class="imgclass">
                            <ul style="width: 275.41px;line-height: 23px">
                                <li>需体现您店铺的特色，可吸引更多的用户进店点餐</li>
                                <li>可用商品图代替；不可使用门脸图，否则会被驳回</li>
                            </ul>
                            <input type="file" accept="image/jpg,image/jpeg,image/png" class="imgupload">
                            <img class="modelimg" src="../res/img/ShopRegisterPage/ShopRegisterPage_imgupload_bg.png" alt=""/>
                            <div class="modelimglow">示例</div>
                            <div class="modelimg2">
                                <div class="modelimg3"></div>
                            </div>
                        </div>
                    </div>

                    <div class="btncls">
                        <input type="button" class="asd" value="保存"/>
                        <input type="button" value="保存并重新提交审核"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $('.asd').click(function(){
        confirm("22222");
    });
</script>
</body>
</html>  