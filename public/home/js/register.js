//姓名是否合格
var is_name =false;
//手机号合格
var is_phone =false;
//图形验证码
var is_validate = false;
//工作单位
var is_work =false;
//手机验证码
var phone_validate =false;
function getWorkstation(){
    if($("input[name=workstation]").val()==''){
        $("input[name=workstation]").css("border-color","#ed5565");
        $('#work_hint').css("opacity","1");
        $("#work_hint").children("span").html("请填写工作单位");
        $("#work_hint").css("color","#ed5565");
        is_work =false;
        return "";
    }else {
        return $("input[name=workstation]").val();
        is_work =true;
    }
}
function getPhone(){
    if($("input[name=phone]").val()==''){
        $("input[name=phone]").css("border-color","#ed5565");
        $("#tel_hint").css("opacity","1");
        $("#tel_hint").children("span").html("请填写手机号");
        $("#tel_hint").css("color","#ed5565");
        return "";
        is_phone =false;
    }else {
        return $("input[name=phone]").val();
        is_phone =true;
    }
}
function getName(){
    if($("input[name=display_name]").val()==''){
        $("input[name=display_name]").css("border-color","#ed5565");
        $("#user_hint2").css("opacity","1");
        $("#user_hint2").children("span").html("请填写中文姓名");
        $("#user_hint2").css("color","#ed5565");
        return "";
        is_name =false;
    }else {
        return $("input[name=display_name]").val();
        is_name =true;
    }
}
function getCode(){
    if($("input[name=code]").val()==''){
        $("input[name=code]").css("border-color","#ed5565");
        $("#sms_hint").css("opacity","1");
        $("#sms_hint").children("span").html("请填写验证码");
        $("#sms_hint").css("color","#ed5565");
        return "";
        phone_validate =false;
    }else {
        return $("input[name=code]").val();
        phone_validate =true;
    }
}
function getValidate(){
    if($("input[name=validate2]").val()==""){
        $("input[name=validate2]").css("border-color","#ed5565");
        $("#validate_hint2").css("opacity","1");
        $("#validate_hint2").children("span").html("请填写验证码");
        $("#validate_hint2").css("color","#ed5565");
        return "";
        is_validate = false;
    }else {
        return $("input[name=validate2]").val();
        is_validate =true;
    }
}
$('input[name=validate2]').bind('input propertychange', function(){
    $("#validate_hint2").css("opacity","0");
    $("#validate_hint2").children("span").html("请填写验证码");
    if($(this).val()!=""){
        $.ajax({
            url:"../validate.php",
            type:'post',
            data:{code:$(this).val()},
            success:function(data){
                if(data==0){

                    is_validate = false;
                    $("input[name=validate2]").css("border-color","#FF0000");
                    $("#validate_hint2").css("opacity","1");
                    $("#validate_hint2").children("span").html("验证码错误，请重试");
                    $("#validate_hint2").css("color","#ed5565");
                    $("#right_icon").hide();
                }else{
                    is_validate = true;

                    $("input[name=validate2]").css("border-color","#bac7d2");
                    $("#validate_hint2").css("opacity","0");
                    $("#right_icon").show();
                }
            }
        })
    }
});

$("#work").bind('input propertychange', function(){
    $('input[name=workstation]').css("border-color","#bac7d2");
    $('#work_hint').css("opacity","0")
    $("#right_company").show();
    is_work = true;
})
$("#tel").bind('input propertychange', function(){
    if(!(/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test($(this).val()))){
        $(this).css("border-color","#ed5565");
        $("#tel_hint").css("opacity","1");
        $("#tel_hint").children("span").html("手机号的格式错误");
        $("#tel_hint").css("color","#ed5565");
        is_phone = false;
    }else{
        $(this).css("border-color","#bac7d2");
        $("#tel_hint").css("opacity","0");
        $.ajax({
            url:"is_user_exists.php",
            type:'post',
            data:{phone: $.trim($(this).val())},
            success:function(data){
                if(data==0){
                    $is_through = false;
                    $("input[name=phone]").css("border-color","#ed5565");
                    $("#tel_hint").css("opacity","1");
                    $("#tel_hint").children("span").html("该手机号已被注册,请更换");
                    $("#tel_hint").css("color","#ed5565");
                    $("#right_phone").hide();
                    is_phone = false;
                }else{
                    is_phone = true;
                    $("input[name=phone]").css("border-color","#bac7d2");
                    $("#tel_hint").css("opacity","0");
                    $("#right_phone").show();
                }
            }
        })
    }
})
$("#user").bind('input propertychange', function(){
    var reg = /^[\u4E00-\u9FA5]+$/;
    if(!reg.test($(this).val())){
        $(this).css("border-color","#ed5565");
        $("#user_hint2").css("opacity","1");
        $("#user_hint2").children("span").html("请填写中文姓名");
        $("#user_hint2").css("color","#ed5565");
        $("#right_name").hide();
        is_name =false;
    }else{
        $(this).css("border-color","#bac7d2");
        $("#user_hint2").css("opacity","0");
        $("#right_name").show();
        is_name =true;
    }
})
function Trim(str)
{
   var result = str.replace(/\s/g,"");
    return result;
}
$("#finsh").click(function(e){

    console.log( $("input[name=userId]").val())
    /////注册成功之后弹窗  剪切到ajax内

//////////////////////////////////////////////////
    $workstation=getWorkstation();
    $phone =getPhone();
    $display_name=getName();
    $codes=getCode();
    $validate =getValidate();
    if (is_phone&&is_name&&is_validate&&is_work&&phone_validate){
        $.ajax({
            url:'../admin/user_manage_action.php?action=add_user',
            type:'post',
            data:{workstation:$workstation,phone:$phone,display_name:$display_name,tuijian_user_id:$("input[name=tuijian_user_id]").val()},
            success:function(data){
                if(data==1){
                    var phone=$phone;
                    var pwd=123456;
                    swal({
                        title: "注册成功",
                        text: "账户："+phone+" 密码：123456",
                        type: "success",
                        showCancelButton: true,
                        confirmButtonColor: "#b42a2e",
                        confirmButtonText: "登录",
                        closeOnConfirm: false
                    }, function () {

                        $.ajax({
                            url:"../login.php",
                            type:'post',
                            data:{user:phone,pwd:pwd},
                            success:function(data){
                                console.log(data);
                                if(data==1){
                                    window.location.reload();
                                }
                            }
                        })
                    });
                }else if(data==0){
                    swal({
                        title: "注册失败",
                        text: "原因请看日志",
                        type: "success",
                        showCancelButton: true,
                        confirmButtonColor: "#b42a2e",
                        confirmButtonText: "确定",
                        closeOnConfirm: false
                    })
                }
            }
        })
    }
})
$("input[name=code]").bind('input propertychange',function(){
    $("#sms_hint").css("opacity","0");
    $.ajax({
        url:'../is_message_code.php',
        type:'post',
        data:{messageCode:$('input[name=code]').val()},
        success:function(data){
            if(data==0){
                alert("验证码失效，请重新拉取验证码");
            }else if(data==2){
                $("input[name=code]").css("border-color","#ed5565");
                $("#sms_hint").css("opacity","1");
                $("#sms_hint").children("span").html("验证码错误");
                $("#sms_hint").css("color","#ed5565");
                $('input[name=code]').next("b").next('img').hide();
                phone_validate= false;
            }else{
                $('input[name=code]').css("border-color","#bac7d2");
                $("#sms_hint").css("opacity","0");
                phone_validate = true;
            }
        }
    })

})

var countdown=60;
function settime(obj) {
    if (countdown <0) {
        obj.attr("disabled","false");
        obj.val("点击发送");
        countdown = 60;
        return;
    }
    else {
        obj.attr("disabled", "true");
        if(countdown==0){
            obj.val("重新获取");
        }else{
            obj.val(countdown + "s后重新获取");
        }
        countdown--;
    }
    setTimeout(function(){settime(obj)},1000);
}
$("input[name=getcode]").click(function(){
    if($("input[name=workstation]").val()==''){
        $("input[name=workstation]").css("border-color","#ed5565");
        $('#work_hint').css("opacity","1");
        $("#work_hint").children("span").html("请填写工作单位");
        $("#work_hint").css("color","#ed5565");
    }else if($("input[name=display_name]").val()==""){
        $("input[name=display_name]").css("border-color","#ed5565");
        $("#user_hint2").css("opacity","1");
        $("#user_hint2").children("span").html("请填写中文姓名");
        $("#user_hint2").css("color","#ed5565");
    }else if($('input[name=phone]').val()==""){
        $("input[name=phone]").css("border-color","#ed5565");
        $("#tel_hint").children('span').html("请填写手机号");
        $("#tel_hint").css("color","#ed5565");
        $("input[name=code]").attr('disabled','disabled');
    }else if($('input[name=validate2]').val()==""){
        $("input[name=validate2]").css("border-color","#ed5565");
        $("#validate_hint2").children('span').html("请填写验证码");
        $("#validate_hint2").css("color","#ed5565");
        $("input[name=code]").attr('disabled','disabled');
    }else if(is_phone&&is_name&&is_validate&&is_work){
        $("input[name=code]").removeAttr('disabled');
        settime($("input[name=getcode]"));
        //发送短信
        $.ajax({
            url:'../sendMessage.php',
            type:'post',
            data:{phone:$('input[name=phone]').val()},
            success:function(data){
                if(data==0){
                    alert("手机号不存在,请输入手机号");
                }else if(data==1){
                    console.log(data);
                }else{
                    alert(data);
                }
            }
        })

    }

})