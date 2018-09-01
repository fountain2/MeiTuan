/**
 * Created by StanJ on 2018/8/11.
 */
$(document).ready(function () {
    //导航栏用户弹出框Start
    $(".top_bg ul li:last-child").hover(
        function(){
            $(this).find(".userOperate").slideDown(100);
        },function(){
            $(this).find(".userOperate").slideUp(100);
        });

    //账号输入的校验
    $("#account").blur(function () {
        var account = $("#account");

        var pattern_account = /^\w{5,20}$/g;//判断账户是否5到20位的字母、数字、_

        if (!account.hasClass("hasError")) {
            if (account.val() == "") {
                account.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>账号不能为空</p></div>");
                account.addClass("hasError");
            } else if (!pattern_account.test(account.val())) {
                account.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>账号应该由5-20位数字、字母或下划线'_'组成\
                </p></div>");
                account.addClass("hasError");
            }
        } else {
            if (account.val() == "") {
                $("#account+.error p").html("账号不能为空");
            } else if (!pattern_account.test(account.val())) {
                $("#account+.error p").html("账号应该由5-20位数字、字母或下划线'_'组成");
            } else {
                $("#account+.error").remove();
                account.removeClass("hasError");
            }
        }
    });
    //密码输入的校验
    $("#psw").blur(function(){
        var psw = $("#psw");
        var pattern_psw = /^(?=.*[A-z])(?=.*\d)[A-Za-z\d]{6,16}$/;//判断密码是否包含字母和数字及是否在6到16位
        if (!psw.hasClass("hasError")) {
            if (psw.val() == "") {
                psw.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>密码不能为空</p></div>");
                psw.addClass("hasError");
            } else if (!pattern_psw.test(psw.val())) {
                psw.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>密码应该由6-16位数字和字母组成\
                </p></div>");
                psw.addClass("hasError");
            }
        }else{
            if(psw.val()==""){
                $("#psw+.error p").html("密码不能为空");
            }else if(!pattern_psw.test(psw.val())){
                $("#psw+.error p").html("密码应该由6-16位数字和字母组成");
            }else{
                $("#psw+.error").remove();
                psw.removeClass("hasError");
            }
        }
    });

    //确认密码输入的校验
    $("#cPsw").blur(function(){
        var cPsw = $("#cPsw");
        var psw = $("#psw");
        if(!cPsw.hasClass("hasError")){
            if(cPsw.val()==""){
                cPsw.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>确认密码不能为空</p></div>");
                cPsw.addClass("hasError");
            }else if(cPsw.val()!=psw.val()){
                cPsw.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>两次密码不一致</p></div>");
                cPsw.addClass("hasError");
            }
        }else{
            if(cPsw.val()==""){
                $("#cPsw+.error p").html("确认密码不能为空");
            }else if(cPsw.val()!=psw.val()){
                $("#cPsw+.error p").html("两次密码不一致");
            }else{
                $("#cPsw+.error").remove();
                cPsw.removeClass("hasError");
            }
        }
    });

    //手机输入的校验
    $("#cell").blur(function(){
        var cell = $("#cell");
        var pattern = /^1\d{10}$/;
        if(!cell.hasClass("hasError")) {
            if (cell.val() == "") {
                cell.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>手机号码不能为空</p></div>");
                cell.addClass("hasError");
            } else if (!pattern.test(cell.val())) {
                cell.after("<div class='error'><img src='../res/img/SellerRegisterPage/error.png'><p>手机号码必须为11位数字</p></div>");
                cell.addClass("hasError");
            }
        }else{
            if (cell.val() == "") {
                $("#cell+.error p").html("手机号码不能为空");
            } else if (!pattern.test(cell.val())) {
                $("#cell+.error p").html("手机号码必须为11位数字");
            }else{
                $("#cell+.error").remove();
                cell.removeClass("hasError");
            }
        }
    });

    //提交时的判断
    $("form").submit(function(event){
        if($("#account").hasClass("hasError")||$("#account").val()==""){
            $("#account").focus();
            event.preventDefault();
            alert("请完成表单");
        }else if($("#psw").hasClass("hasError")||$("#psw").val()=="") {
            $("#psw").focus();
            event.preventDefault();
            alert("请完成表单");
        }else if($("#cPsw").hasClass("hasError")||$("#cPsw").val()=="") {
            $("#cPsw").focus();
            event.preventDefault();
            alert("请完成表单");
        }else if($("#cell").hasClass("hasError")||$("#cell").val()=="") {
            $("#cell").focus();
            event.preventDefault();
            alert("请完成表单");
        }else {
            alert("提交完成");
        }
    });

});