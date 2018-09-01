//——————————————————
//判断目标值是否为数字的可调用方法***|
function isRealNum(val) {
    if (val === "" || val == null) {
        return false;
    } else return !isNaN(val);
}

//————————————————————
//地址元素变化时重新设置相关事件的方法***|
var buttonToSave = "";//用来标识哪个按钮打开的地址填写弹窗
var whichAddress = 0;//用来标识从哪条地址打开的修改弹窗，从0计起
function addressChange() {
    $(" .customerInfList_bg li").click(function () {//地址选中时的方法
        $(".customerInfList_bg li").attr("name", "no");
        $(this).attr("name", "yes");
        $(" [name='no']").css({"color": "#aaaaaa", "border-color": "#EEEEEE", "background-color": "#FAFAFA"});
        $("[name='no']").children(".secondRow").children(".checked").hide();
        $(" [name='yes']").css({"color": "#000000", "border-color": "#FFD161", "background-color": "#ffffff"});
        $("[name='yes']").children(".secondRow").children(".checked").show();
    });
    $(".updateButton").click(function () {//修改地址时的弹窗方法
        buttonToSave = "updateButton";
        whichAddress = $(this).parents("li").index();
        var name = $(this).siblings(".cName").html();
        var sex = $(this).siblings(".cSex").html();
        var phone = $(this).siblings(".cPhone").html();
        var address = $(this).parent().siblings(".secondRow").children(".cAddress").html();
        $("[name='CName']").val(name);
        if (sex == "先生") {
            $("[name='CSex']").attr("checked", false);
            $("[name='CSex'][value='1']").attr("checked", true);
        } else {
            $("[name='CSex']").attr("checked", false);
            $("[name='CSex'][value='2']").attr("checked", true);
        }
        $("[name='CPhone']").val(phone);
        $("[name='CAddress']").val(address);
        $(".box_bg1").show();
    });
    $(".deleteButton").click(function () {//删除地址时的弹窗方法
        whichAddress = $(this).parents("li").index();
        $(".box_bg2").show();
    });
}

//——————————————————————
//地址数不足3个时 显示/隐藏 相关按钮的方法***|
function addressShowButton(){
    var heightVal = $(".customerInfList_bg li").length * 100;
    if ($("  .customerInfList_bg li").length < 3) {
        $(".customerInfList_bg").css("height", heightVal + "px");
        $(".showMoreButton").hide();
    }else{
        var isOn = $("   .customerInfList_bg").attr("id");
        if (isOn == "off") {
            $(".showMoreButton").html("隐藏所有地址▲");
            $(".customerInfList_bg").attr("id", "on");
            $(" .customerInfList_bg").animate({"height": heightVal + "px"}, 300);
            $("  .customerInfList_bg").css("border-bottom-color", "#FFD161");
            $(this).css({
                "border": "1px solid #FFD161",
                "border-top-color": "white"
            });
        } else {
            $(".showMoreButton").html("显示所有地址▼");
            $(".customerInfList_bg").attr("id", "off");
            $(" .customerInfList_bg").animate({"height": "200px"}, 300);
            $("  .customerInfList_bg").css("border-bottom-color", "#CCCCCC");
            $(this).css({
                "border": "1px solid #CCCCCC",
                "border-top-color": "white"
            });
        }
        $(" .showMoreButton").show();
    }
}



//——————————————————————
//————****页面加载时的预设方法****————
//——————————————————————
$(document).ready(function () {
    //置顶按钮用————————————
    $(".toTop").click(function () {
        if ($(window).scrollTop() != 0) {
            $("body,html").animate({scrollTop: 0}, 300);
        }
    });

    //地址列表的隐藏/显示处理—————
    $(" .showMoreButton").click(function () {
        var isOn = $("   .customerInfList_bg").attr("id");
        var heightVal = $(".customerInfList_bg li").length * 100;
        if (isOn != "on") {
            $(this).html("隐藏所有地址▲");
            $(".customerInfList_bg").attr("id", "on");
            $(" .customerInfList_bg").animate({"height": heightVal + "px"}, 300);
            $("  .customerInfList_bg").css("border-bottom-color", "#FFD161");
            $(this).css({
                "border": "1px solid #FFD161",
                "border-top-color": "white"
            });
        } else {
            $(this).html("显示所有地址▼");
            $(".customerInfList_bg").attr("id", "off");
            $(" .customerInfList_bg").animate({"height": "200px"}, 300);
            $("  .customerInfList_bg").css("border-bottom-color", "#CCCCCC");
            $(this).css({
                "border": "1px solid #CCCCCC",
                "border-top-color": "white"
            });
        }
    });
    addressShowButton();

    //地址信息管理的相关方法Start·······》
    //全屏化遮罩层——————————
    var maxWidth = $(window).width();
    var maxHeight = $(window).height();
    $(".box_bg1").css({"width": maxWidth + "px", "height": maxHeight + "px"});
    $(".box_bg2").css({"width": maxWidth + "px", "height": maxHeight + "px"});

    //开启填写地址弹窗的方法—————
    $(".addAddress").click(function () {//新增地址时
        buttonToSave = "insertButton";
        $("[name='CName']").val("");
        $("[name='CSex'][value='1']").attr("checked", true);
        $("[name='CPhone']").val("");
        $("[name='CAddress']").val("");
        $(".box_bg1").show();
    });
    //地址选中处理+新元素弹窗事件的设置——————————
    addressChange();

    //失去焦点时输入框恢复原状态
    $("[name='CName']").blur(function () {
        $(this).css({"background-color": "#FFFFFF"}).attr("placeholder", "请输入姓名");
    });
    $("[name='CPhone']").blur(function () {
        $(this).css({"background-color": "#FFFFFF"}).attr("placeholder", "请输入11位手机号码");
    });
    $("[name='CAddress']").blur(function () {
        $(this).css({"background-color": "#FFFFFF"}).attr("placeholder", "请输入详细地址");
    });

    //增加新地址 和 保存已修改地址 的方法————————
    $(".saveButton").click(function () {
        var name = $("[name='CName']").val();
        var sex = "";
        if ($("[name='CSex']:checked").val() == 1) {
            sex = "先生";
        } else {
            sex = "女士";
        }
        var phone = $("[name='CPhone']").val();
        var address = $("[name='CAddress']").val();
        //输入框 内容格式 判定—————
        if (name == "") {//姓名框为空时，提示错误
            $(" [name='CName']").css({"background-color": "#FFC87B"}).focus().attr("placeholder", "不能为空");
        } else if (phone == "") {//手机号为空时，提示错误
            $(" [name='CPhone']").css({"background-color": "#FFC87B"}).focus().attr("placeholder", "不能为空");
        } else if ((phone.length != 11) || !isRealNum(phone)) {//手机号位数不符或不为数时，提示错误
            $(" [name='CPhone']").val("").css({"background-color": "#FFC87B"}).focus().attr("placeholder", "手机号格式错误");
        } else if (address == "") {//地址框为空时，提示错误
            $(" [name='CAddress']").css({"background-color": "#FFC87B"}).focus().attr("placeholder", "不能为空");
        } else {
            //增加新地址的方法——————
            if (buttonToSave == "insertButton") {
                $(".customerInfList_bg").prepend(
                    "<li>" +
                    "<div class='firstRow'>" +
                    "<span class='cName'>" + name + "</span>&nbsp;" +
                    "<span class='cSex'>" + sex + "</span>&nbsp;:" +
                    "<span class='cPhone'>" + phone + "</span>" +
                    "<span class='deleteButton'>删除</span>" +
                    "<span class='updateButton'>修改</span>" +
                    "</div>" +
                    "<div class='secondRow'>" +
                    "<span class='cAddress'>" + address + "</span>" +
                    "<span class='checked'>已选中</span>" +
                    "</div>" +
                    "</li>");
                addressChange();
                $(".box_bg1").hide();
                addressShowButton();
            }
            //保存已修改地址的方法——————
            else {
                $(".customerInfList_bg li").eq(whichAddress).find(".cName").html(name);
                $(" .customerInfList_bg li").eq(whichAddress).find(".cSex").html(sex);
                $("  .customerInfList_bg li").eq(whichAddress).find(".cPhone").html(phone);
                $("   .customerInfList_bg li").eq(whichAddress).find(".cAddress").html(address);
                $(".box_bg1").hide();
            }
        }
    });

    //删除选中地址的方法———————
    $(".yesButton").click(function(){
        $(".customerInfList_bg li").eq(whichAddress).remove();
        $(".box_bg2").hide();
        addressShowButton();
    });

    //关闭填写地址弹窗的方法—————
    $(".newAddress_box_title span").click(function () {
        $(".box_bg1").hide();
    });
    $(".cancelButton").click(function () {
        $(".box_bg1").hide();
    });
    $(".deleteAddress_box_title span").click(function () {
        $(".box_bg2").hide();
    });
    $(".noButton").click(function () {
        $(".box_bg2").hide();
    });
    //地址信息管理的相关方法End········》

    //选中不同付款方式的方法
    $(".way1").click(function () {
        $(".way1").css({"color": "#FA9700", "border-color": "#FA9700", "background-color": "#FFFFFF"});
        $(".way2").css({"color": "#000000", "border-color": "#bbbbbb", "background-color": "#EEEEEE"});
    });
    $(".way2").click(function () {
        $(".way2").css({"color": "#FA9700", "border-color": "#FA9700", "background-color": "#FFFFFF"});
        $(".way1").css({"color": "#000000", "border-color": "#bbbbbb", "background-color": "#EEEEEE"});
    });

    //同步应付金额——————————
    var finalPrice = $(".priceOfAll_right").text();
    $(".sumPrice span").text(finalPrice);

});
