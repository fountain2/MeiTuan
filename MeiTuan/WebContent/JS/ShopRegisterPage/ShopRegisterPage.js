typeArr = new Object();

typeArr['美食'] = new Array('快餐小吃', '地方菜', '海鲜/烧烤', '西餐', '日韩料理', '火锅', '特色菜', '香锅/烤鱼', '东南亚菜');
typeArr['甜点饮品'] = new Array('奶茶果汁', '面包/小蛋糕', '甜品', '咖啡', '冰淇淋', '中西糕点', '生日蛋糕', '凉茶/龟苓膏', '冻酸奶/炒酸奶', '其他饮品');
typeArr['生活超市'] = new Array('便利店', '超市', '零食/干果', '酒水/茶行', '水站/奶站', '粮油调味', '地方特产', '宠物用品', '进口食品', '文具店', '日化美妆', '五金日用', '书店');
typeArr['生鲜果蔬'] = new Array('整装水果', '鲜切水果', '蔬菜', '肉禽蛋奶', '冷冻速食', '大闸蟹', '其他海鲜水产', '其他生鲜果蔬');

$(function () {
    //$('input').first().blur(function(){
    //    var as = $('input').first().val();
    //    var pattern = /^\w{5,20}$/;
    //    alert(pattern.test(as));
    //})

    $('*').css({'user-select':'none'});
    $('*').attr({'draggable':'false'});

    $('lable').filter('.star').prepend('<span style="color: red">*</span>');

    //初始化select storeType
    function init_type() {
        var s1v = $('.type1').first().val();
        var storeType2 = $('.type1[name="storeType2"]');

        for (var i = 0; i < typeArr[s1v].length; i++) {
            storeType2.append('<option value=' + typeArr[s1v][i] + '>' + typeArr[s1v][i] + '</option>');
        }
    }

    init_type();

    //监听change
    $('.type1').first().change(function () {
        var s1v = $(this).val();
        var storeType2 = $('.type1[name="storeType2"]');

        if (storeType2.html() != '') {
            storeType2.html('');
        }
        for (var i = 0; i < typeArr[s1v].length; i++) {
            storeType2.append('<option value=' + typeArr[s1v][i] + '>' + typeArr[s1v][i] + '</option>');
        }
    });

    //生成select 省市县
    $.fn.json2select = function (json, dft, name, deep) {
        var _this = this, name = name || "sel", deep = deep || 0, dft = dft || [];
        $("[name=" + name + deep + "]", _this).nextAll().remove();
        if (json[0]) {
            var slct = $("<select name='" + name + $("select", _this).length + "' class='type1'></select>");
            $("<option value=''>请选择</option>").appendTo(slct);
            $.each(json, function (i, sd) {
                $("<option value='" + (sd.v || sd.t) + "'>" + sd.t + "</option>").appendTo(slct).data("s", sd.s || []);
            });
            slct.change(function (e, dftFlag) {
                $(this).val() && _this.json2select($(":selected", this).data("s"), dftFlag ? dft.slice(1) : [], name, $(this).attr("name").match(/\d+/)[0]);
            }).appendTo(_this).val(dft[0] || 0).trigger("change", [true]);
        }
        return _this;
    };

    $("#province").json2select(areaJson);
    //默认选择第一个值
    $('.type1[name="sel0"]').find('option:eq(0)').attr('selected','selected');
    //嵌套监听
    $('.type1[name="sel0"]').on('change',function(){
        $('.type1[name="sel1"]').find('option:eq(0)').attr('selected','selected');
        $('.type1[name="sel1"]').on('change',function(){
            $('.type1[name="sel2"]').find('option:eq(0)').attr('selected','selected');
        })
    });

    //示例图片的显示,独自监听hover
    $('.modelimg').hover(function(){
        $(this).siblings('.modelimg2').toggle();
    });

    //表单填写错误信息
    $('input[type=text]').blur(function(){
       if($(this).val().trim()==''){
           $(this).css('borderColor','red');
           $(this).siblings('.form_tip').css('visibility','visible');
       }else{
           $(this).css('borderColor','#ccc');
           $(this).siblings('.form_tip').css('visibility','hidden');
       }

    });
});


