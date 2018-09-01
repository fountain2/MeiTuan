//——————————————————
//判断目标值是否为数字的可调用方法***|
function isRealNum(val) {
    if (val === "" || val == null) {
        return false;
    } else return !isNaN(val);
}

var buttonNum = 1;//用来演示店铺状态切换的临时变量
$(document).ready(function(){
    //导航栏用户弹出框Start
    $(".top_bg ul li:last-child").hover(
        function(){
            $(this).find(".userOperate").slideDown(100);
        },function(){
            $(this).find(".userOperate").slideUp(100);
        });
    //导航栏用户弹出框End

    //切换状态的按钮点击事件
    $(".stateButton").click(function(){
        $(this).css({"color":"white","background-color":"#06C1AE"});
        $(this).siblings("button").css({"color":"black","background-color":"#dddddd"});
    });
    $(".autoSwitch").click(function(){
        $(this).css({"color":"white","background-color":"#06C1AE"});
        $(this).siblings("button").css({"color":"black","background-color":"#dddddd"});
    });

    //批量增加时间下拉框的选项
    for(var i=0;i<24;i++){
        $(".start").append(
            "<option>"+i+":00</option>" +
            "<option>"+i+":30</option>"
        );
        $(".end").append(
            "<option>"+i+":00</option>" +
            "<option>"+i+":30</option>"
        );
    }

    //输入框格式判定
    $("[name='ShopName']").blur(function(){//店名
       if($(this).val()==""){
           $(this).next().html("不能为空").show();
       } else{
           $(this).next().hide();
       }
    });
    $("[name='ShopPhone']").blur(function(){//店铺电话
        if($(this).val()==""){
            $(this).next().html("不能为空").show();
        } else if(!isRealNum($(this).val())||$(this).val().length!=11){
            $(this).next().html("必须是11位数字").show();
        } else{
            $(this).next().hide();
        }
    });
    $("[name='NeedPrice']").blur(function(){//起送价
        if($(this).val()==""){
            $(this).next().html("不能为空").show();
        } else if(!isRealNum($(this).val())){
            $(this).next().html("必须是数字").show();
        } else{
            $(this).next().hide();
        }
    });
    $("[name='AddedPrice']").blur(function(){//配送价
        if($(this).val()==""){
            $(this).next().html("不能为空").show();
        } else if(!isRealNum($(this).val())){
            $(this).next().html("必须是数字").show();
        } else{
            $(this).next().hide();
        }
    });
});