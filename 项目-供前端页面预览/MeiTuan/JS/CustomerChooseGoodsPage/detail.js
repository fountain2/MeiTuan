/**
 * Created by 14314 on 2018-08-28.
 */
$(document).ready(function(){
    $(window).scroll(function() {
        if ($(window).scrollTop() >= 280) {
            $('#go_top').fadeIn(300);
        } else {
            $('#go_top').fadeOut(300);
        }
    });

    $("#go_top").click(function() {
        $("HTML,body").animate({
            scrollTop: 0
        }, 500);
    });

    $(".left").click(function(){
        $(".detail").slideToggle("slow");
    });

    $(".clean").click(function(){
        $(".list").css({"display" : "none"});
    });

    $(".addCart").click(function(){
        var i = $(this).siblings("p").text();
        var p = $(this).siblings("h3").text();
        $(".detail").append("<div class='list one'><span>"+p+"</span><a class='del'>-</a><input class='number' type='text' value='1'/><a class='add'>+</a><p><span  class='addSum'>"+i+"</span>元</p></div>");

        $(".one").ready(function(){
            $(".one>.del").click(function(){
                var num = $(this).siblings(".number").val();
                if(num >= 1){
                    num --;
                    $(this).siblings(".number").val(num);
                }
                if(num == 0){
                    $(this).parent().remove();
                }
            });

            $(".one>.add").click(function(){
                var num = $(this).siblings(".number").val();
                if(num < 10){
                    num ++;
                    $(this).siblings(".number").val(num);
                }
            });

            $(".list").removeClass("one");
        });
    });


    $("#total").append("aaa");
});

function sum(){
    var i;
    var sum= document.getElementsByClassName("addSum");
    for(i = 0; i < sum.length; i ++){
        alert(sum[i].innerHTML);
    }
}
