$(document).ready(function () {
    //置顶按钮用
    $(".toTop").click(function () {
        if ($(window).scrollTop() != 0) {
            $("body,html").animate({scrollTop: 0}, 300);
        }
    });
    //折叠订单详情
    $(".aOrderTop").click(function () {
        $(this).next(".aOrderContent").slideToggle(300);
    });

    //左侧选项切换页面
    $(".content_left_item1").click(function(){
        $(this).css({"border-left-color":"#FFD161","background-color":"#FAFAFA"});
        $(".content_left_item2").css({"border-left-color":"transparent","background-color":"transparent"});
        $(".content_left_item3").css({"border-left-color":"transparent","background-color":"transparent"});
        $(".content1_right").show();
        $(".content2_right").hide();
        $(".content3_right").hide();
    });
    $(".content_left_item2").click(function(){
        $(this).css({"border-left-color":"#FFD161","background-color":"#FAFAFA"});
        $(".content_left_item1").css({"border-left-color":"transparent","background-color":"transparent"});
        $(".content_left_item3").css({"border-left-color":"transparent","background-color":"transparent"});
        $(".content1_right").hide();
        $(".content2_right").show();
        $(".content3_right").hide();
    });
    $(".content_left_item3").click(function(){
        $(this).css({"border-left-color":"#FFD161","background-color":"#FAFAFA"});
        $(".content_left_item1").css({"border-left-color":"transparent","background-color":"transparent"});
        $(".content_left_item2").css({"border-left-color":"transparent","background-color":"transparent"});
        $(".content1_right").hide();
        $(".content2_right").hide();
        $(".content3_right").show();
    });

    //取消收藏的方法
    var whichCollection = 0;
    $(".cancelButton").click(function(){
        whichCollection=$(this).parents(".aCollection").index();
        $(".aCollection").eq(whichCollection).remove();
    });
});