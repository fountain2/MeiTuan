/**
 * Created by 14314 on 2018-08-28.
 */
$(document).ready(function(){
    $(".type").first().addClass("click");
    $("#content1").css({"display" : "block"});
    $(".type").click(function(){
        $(this).addClass("click").siblings().removeClass("click");
    });

    $(window).scroll(function() {
        if ($(window).scrollTop() >= 280) {
            $('#go_top').fadeIn(300);
            $('#hide').fadeIn(300);
        } else {
            $('#go_top').fadeOut(300);
            $('#hide').fadeOut(300);
        }
    });

    $("#go_top").click(function() {
        $("HTML,body").animate({
            scrollTop: 0
        }, 500);
    });
});

function showDiv1(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content1").style.display = "block";
}

function showDiv2(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content2").style.display = "block";
}

function showDiv3(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content3").style.display = "block";
}

function showDiv4(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content4").style.display = "block";
}

function showDiv5(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content5").style.display = "block";
}

function showDiv6(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content6").style.display = "block";
}

function showDiv7(){
    for(var i = 0; i < 7; i ++){
        document.getElementsByClassName("content")[i].style.display = "none";
    }
    document.getElementById("content7").style.display = "block";
}