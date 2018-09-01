/**
 * Created by StanJ on 2018/8/28.
 */

$("document").ready(function () {

    //导航栏用户弹出框Start
    $(".top_bg ul li:last-child").hover(
        function () {
            $(this).find(".userOperate").slideDown(100);
        }, function () {
            $(this).find(".userOperate").slideUp(100);
        });
    //新建菜品卡片弹出框
    $(".content_main").on("click", ".AddGoods", function () {
        $(this).addClass("active");
        var goods_name = "";
        var goods_price = "";
        var img_url = "";
        $("#tags_popup").css("display", "block");
        //$("#tags_popup").style("display:block");
        $("#tags_popup_content").click(function (e) {
            e.stopPropagation();
        });
        /**
         * 离开菜品卡片弹出框的方法，包括点击取消、点击窗口外部分
         */
        $("#tags_popup,.goods_input_button.cancel").click(function () {
            $("#tags_popup").css("display", "none");
            $("#goods_name_input").val("");
            $("#error_name").css("display", "none");
            $(".hint_Good_Name").css("top", "0");
            $("#goods_name_input").removeClass("hasError");
            $("#goods_price_input").val("");
            $("#error_price").css("display", "none");
            $(".hint_price_Name").css("top", "0");
            $("#goods_price_input").removeClass("hasError");
            $("#upload_img").attr("src", "../res/img/ShopGoodsManagementPage/ShopGoodsManagementPage_imgupload_bg.png");
            $("#goods_img_input").val("");
            goods_name = "";
            goods_price = "";
            img_url = "";
            $(".active").removeClass("active");
        });
        /**
         * 对输入的菜品名称进行格式控制
         */
        $("#goods_name_input").blur(function () {
            var name_pattern = /^[\u4e00-\u9fa5_a-zA-Z0-9]{1,30}$/g;  //匹配中文或字母、数字、下划线，1到30个字符
            if (!name_pattern.test($("#goods_name_input").val())) {
                $("#error_name").css("display", "block");
                $("#goods_name_input").addClass("hasError");
                $(".hint_Good_Name").css("top", "-40px");
            } else {
                $("#error_name").css("display", "none");
                $(".hint_Good_Name").css("top", "0");
                $("#goods_name_input").removeClass("hasError");
                goods_name = $("#goods_name_input").val();
            }
        });
        /**
         * 对输入的价格进行格式检查
         */
        $("#goods_price_input").blur(function () {
            var price_pattern = /^\d{1,4}$/;
            if (!price_pattern.test($("#goods_price_input").val())) {
                $("#error_price").css("display", "block");
                $("#goods_price_input").addClass("hasError");
                $(".hint_Good_Name").css("top", "-40px");
            } else {
                $("#error_price").css("display", "none");
                $(".hint_price_Name").css("top", "0");
                $("#goods_price_input").removeClass("hasError");
                goods_price = $("#goods_price_input").val();
            }
        });
        /**
         * 控制输入并实时显示图片
         */
        $("#goods_img_input").change(function (e) {
            var img_pattern = /.(jp2|jpg|jpe|jpeg|png|JPG|tif|tiff)$/;
            if (!img_pattern.test($("#goods_img_input").val())) {
                alert("不能上传除了jp2,jpg/jpe/jpeg,png,tiff/tif之外的图片");
                this.val("");
            } else {

                var objUrl = getObjectURL(this.files[0]);
                $("#upload_img").attr("src", objUrl); //将图片路径存入src中，显示出图片
                img_url = objUrl;
                //location.href=objUrl;

            }
        });
        /**
         * 添加菜品窗口确认
         */
        $("#confirm").off("click").on("click", function () {
            if (goods_name != "" && goods_price != "" && img_url != "") {

                $(".active").before("<div class='Goods'><div class='Goods_content'><img src=" + img_url + ">" +
                " <p class='Goods_Name'>" + goods_name + "</p> <p class='price'>￥" + goods_price + "</p>" +
                " <button class='update update_goods'>修改</button> <button class='delete delete_goods'>删除</button> " +
                "<br/> </div> </div>");
                $(".active").removeClass("active");
                $("#tags_popup").css("display", "none");
                $("#goods_name_input").val("");
                $("#error_name").css("display", "none");
                $(".hint_Good_Name").css("top", "0");
                $("#goods_name_input").removeClass("hasError");
                $("#goods_price_input").val("");
                $("#error_price").css("display", "none");
                $(".hint_price_Name").css("top", "0");
                $("#goods_price_input").removeClass("hasError");
                $("#upload_img").attr("src", "../res/img/ShopGoodsManagementPage/ShopGoodsManagementPage_imgupload_bg.png");
                $("#goods_img_input").val("");
                goods_name = "";
                goods_price = "";
                img_url = "";

            } else {
                alert("请完成所有信息");

            }
        })
    });
    /**
     *添加标签卡片弹出框
     */
    $(".tags_add").click(function () {
        $("#tags_add_popup").css("display", "block");
        $("#tags_add_popup_content").click(function (e) {
            e.stopPropagation();
        })
    });
    /**
     * 离开标签卡片弹出框的方法，包括点击取消、点击窗口外部分
     */
    $("#tags_add_popup,#tags_cancel").click(function () {
        $("#tags_add_popup").css("display", "none");
        $("#goods_tags_name_input").val("");

    });
    /**
     * 确认添加标签卡片
     */
    $("#tags_confirm").on("click", function () {
        var name_pattern = /^[\u4e00-\u9fa5_a-zA-Z0-9]{1,30}$/g;
        if (!name_pattern.test($("#goods_tags_name_input").val())) {
            alert("请输入1到30个字符中文或字母、数字、下划线");
        } else {
            $(".tags_add").before("<div class='tags_box'><div class='tags_box_title'>\
            <input type='text' class='tags_name'  readonly='readonly' value=" + $("#goods_tags_name_input").val() + ">\
            <i class='iconfont icon-shanchu delete_tags'></i>\
            </div>\
            <div class='AddGoods'> <i class='iconfont icon-jiahao'></i> </div></div>");

            $("#tags_add_popup").css("display", "none");
            $("#goods_tags_name_input").val("");
        }
    });
    /**
     * 删除标签卡片方法
     * */
    $(".content_main").on("click", ".delete_tags", function () {
        var confirm = confirm_box("tags");
        if (confirm) {
            $(this).parents(".tags_box").remove();
        }
    });
    /**
     * 修改类别名，通过双击类别名进入
     */
    $(".content_main").on("dblclick", ".tags_name", function () {
        $(this).removeAttr("readonly");
    });
    /**
     * 修改类别名完成，失焦时对输入的值进行判断，类别名进入不可修改
     */
    $(".content_main").on("blur", ".tags_name", function () {
        $(this).attr("readonly", "readonly");
    });
    /**
     * 删除商品的方法
     */
    $(".content_main").on("click", ".delete_goods", function () {
        var confirm = confirm_box("goods");
        if (confirm) {
            $(this).parents(".Goods").remove();
        }
    });
    /**
     * 修改商品的方法
     */
    $(".content_main").on("click", ".update_goods", function () {
        $(this).parents(".Goods").addClass("active_update");
        var goods_name = $(".active_update .Goods_Name").html();
        var goods_price = $(".active_update .price").html();
        var img_url = $(".active_update img").attr("src");
        $("#goods_name_input").val(goods_name);
        $("#goods_price_input").val(goods_price);
        //alert(img_url);
        $("#upload_img").attr("src", img_url);

        $("#tags_popup").css("display", "block");
        //$("#tags_popup").style("display:block");
        $("#tags_popup_content").click(function (e) {
            e.stopPropagation();
        });
        /**
         * 离开菜品卡片弹出框的方法，包括点击取消、点击窗口外部分
         */
        $("#tags_popup,.goods_input_button.cancel").click(function () {
            $("#tags_popup").css("display", "none");
            $("#goods_name_input").val("");
            $("#error_name").css("display", "none");
            $(".hint_Good_Name").css("top", "0");
            $("#goods_name_input").removeClass("hasError");
            $("#goods_price_input").val("");
            $("#error_price").css("display", "none");
            $(".hint_price_Name").css("top", "0");
            $("#goods_price_input").removeClass("hasError");
            $("#upload_img").attr("src", "../res/img/ShopGoodsManagementPage/ShopGoodsManagementPage_imgupload_bg.png");
            $("#goods_img_input").val("");
            goods_name = "";
            goods_price = "";
            img_url = "";
            $(".active_update").removeClass("active_update");
        });
        /**
         * 对输入的菜品名称进行格式控制
         */
        $("#goods_name_input").blur(function () {
            var name_pattern = /^[\u4e00-\u9fa5_a-zA-Z0-9]{1,30}$/g;  //匹配中文或字母、数字、下划线，1到30个字符
            if (!name_pattern.test($("#goods_name_input").val())) {
                $("#error_name").css("display", "block");
                $("#goods_name_input").addClass("hasError");
                $(".hint_Good_Name").css("top", "-40px");
            } else {
                $("#error_name").css("display", "none");
                $(".hint_Good_Name").css("top", "0");
                $("#goods_name_input").removeClass("hasError");
                goods_name = $("#goods_name_input").val();
            }
        });
        /**
         * 对输入的价格进行格式检查
         */
        $("#goods_price_input").blur(function () {
            var price_pattern = /^\d{1,4}$/;
            if (!price_pattern.test($("#goods_price_input").val())) {
                $("#error_price").css("display", "block");
                $("#goods_price_input").addClass("hasError");
                $(".hint_Good_Name").css("top", "-40px");
            } else {
                $("#error_price").css("display", "none");
                $(".hint_price_Name").css("top", "0");
                $("#goods_price_input").removeClass("hasError");
                goods_price = $("#goods_price_input").val();
            }
        });
        /**
         * 控制输入并实时显示图片
         */
        $("#goods_img_input").change(function (e) {
            var img_pattern = /.(jp2|jpg|jpe|jpeg|png|JPG|tif|tiff)$/;
            if (!img_pattern.test($("#goods_img_input").val())) {
                alert("不能上传除了jp2,jpg/jpe/jpeg,png,tiff/tif之外的图片");
                this.val("");
            } else {

                var objUrl = getObjectURL(this.files[0]);
                $("#upload_img").attr("src", objUrl); //将图片路径存入src中，显示出图片
                img_url = objUrl;
                //location.href=objUrl;

            }
        });
        /**
         * 添加菜品窗口确认
         */
        $("#confirm").off("click").on("click", function () {
            if (goods_name != "" && goods_price != "" && img_url != "") {

                $(".active_update .Goods_Name").html(goods_name);
                $(".active_update .price").html(goods_price);
                $(".active_update img").attr("src", img_url);
                $(".active_update").removeClass("active_update");
                $("#tags_popup").css("display", "none");
                $("#goods_name_input").val("");
                $("#error_name").css("display", "none");
                $(".hint_Good_Name").css("top", "0");
                $("#goods_name_input").removeClass("hasError");
                $("#goods_price_input").val("");
                $("#error_price").css("display", "none");
                $(".hint_price_Name").css("top", "0");
                $("#goods_price_input").removeClass("hasError");
                $("#upload_img").attr("src", "../res/img/ShopGoodsManagementPage/ShopGoodsManagementPage_imgupload_bg.png");
                $("#goods_img_input").val("");
                goods_name = "";
                goods_price = "";
                img_url = "";


            } else {
                alert("请完成所有信息");

            }
        })
    });
});

//建立一個可获取图片url的function
function getObjectURL(file) {
    var url = null;
    if (window.createObjectURL != undefined) { // basic
        url = window.createObjectURL(file);
    } else if (window.URL != undefined) { // mozilla(firefox)
        url = window.URL.createObjectURL(file);
    } else if (window.webkitURL != undefined) { // webkit or chrome
        url = window.webkitURL.createObjectURL(file);
    }
    return url;
}

//确认框
function confirm_box(select) {
    var r;
    if (select == "goods") {
        r = confirm("您确定要删除该商品吗");
    } else if (select == "tags") {
        r = confirm("您确定要删除该标签吗");
    }
    return r;
}