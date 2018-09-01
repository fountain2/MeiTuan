/**
 * Created by StanJ on 2018/8/22.
 */
$("document").ready(function(){
    //导航栏用户弹出框Start
    $(".top_bg ul li:last-child").hover(
        function(){
            $(this).find(".userOperate").slideDown(100);
        },function(){
            $(this).find(".userOperate").slideUp(100);
        });
    /**
     * 提交时进行判断
     */
    $("form").submit(function(e){
        var account = $("#account");
        var psw = $("#psw");
        //这里写账号密码的校验
        if("Stan"==account.val()&&"123"==psw.val()){
            //登录成功的代码
        }else{
            //登录失败的代码
            e.preventDefault();
            $(".error").css("display","block");
        }
    })
});