var buttonNum = 1;
$(document).ready(function(){
    //导航栏用户弹出框Start
    $(".top_bg ul li:last-child").hover(
        function(){
            $(this).find(".userOperate").slideDown(100);
      },function(){
            $(this).find(".userOperate").slideUp(100);
        });
    //导航栏用户弹出框End
    //分块标题栏点击事件
    $(".title").click(function(){
        $(this).next().slideToggle(300);
        $(this).next().next().slideToggle(300);
        if($(this).find("span").text()=="+"){
            $(this).find("span").text("-");
            $(this).find("span").animate({"margin-top":"8px"},300);
            $(this).animate({"line-height":"40px"},300);
        }else{
            $(this).find("span").text("+");
            $(this).find("span").animate({"margin-top":"13px"},300);
            $(this).animate({"line-height":"50px"},300);
        }
    });
    //店铺信息样式调整
    $(".shopState_bg_left .shopInf1 li:odd").css({"width":"140px"});
    $(".shopState_bg_left ul li:even").css({"font-weight":"bold"});
    //切换状态的按钮点击事件
    $(".shopState_bg_right button").click(function(){
        $(this).css({"color":"white","background-color":"#06C1AE"});
        $(this).siblings("button").css({"color":"black","background-color":"#dddddd"});
    });

});