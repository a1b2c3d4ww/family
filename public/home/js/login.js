function checks(newName){
    var regEn = /[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im,
    regCn = /[·！#￥（——）：；“”‘、，|《。》？、【】[\]]/im;
if(regEn.test(newName) || regCn.test(newName)) {
    return false;
}else{
    return true;
}
}
function Trim(str)
    {
         result = str.replace(/\s/g,"");
         return result;
     }
function dump(str){
  console.log(str);
}
var is_validate=false;
var is_through = false;
function getUser(){
    if($("input[name=user]").val()==""){
        $("input[name=user]").css("border-color","#ed5565");
        $("#user_hint").show();
        $("#user_hint").children('i').show();
        $("#user_hint").children("span").html("请填写用户名");
        $("#user_hint").css("color","#ed5565");
         is_through = false;
        return "";
    }else{
        return $("input[name=user]").val();
        var is_through = true;
    }

}
function getPwd(){
    if($("input[name=pwd]").val()==""){
        $("input[name=pwd]").css("border-color","#ed5565");
        $("#pwd_hint").show();
        $("#pwd_hint").children('i').show();
        $("#pwd_hint").children("span").html("请填写密码");
        $("#pwd_hint").css("color","#ed5565");
        is_through = false;
        return "";
    }else{
        return $("input[name=pwd]").val();
        is_through =true;
    }
}
function getValidate(){
    console.log(1)
    if($("input[name=validate]").val()!=""){
        return $("input[name=validate]").val();
        is_through = true;
    }else{
        $("input[name=validate]").css("border-color","#ed5565");
        $("#validate_hint").show();
        $("#validate_hint").children('i').show();
        $("#validate_hint").children("span").html("请填写验证码");
        $("#validate_hint").css("color","#ed5565");
        is_through = false;
        return "";
    }
}
$("input[name=user]").bind('input propertychange', function() {
                  $("input[name=user]").css("border-color","#bac7d2");
                    $("#user_hint").hide();
                    $("#user_hint").children('i').hide();
                     $("#user_hint").children("span").html("");
                     is_through = true;
});
$("input[name=pwd]").bind('input propertychange', function() {
                  $("input[name=pwd]").css("border-color","#bac7d2");
                    $("#pwd_hint").hide();
                    $("#pwd_hint").children('i').hide();
                     $("#pwd_hint").children("span").html("");
                     is_through = true;
});
$('input[name=validate]').bind('input propertychange', function() {
    if($(this).val()!=""){
        if (!checks($('input[name=validate]').val())){
            $("input[name=validate]").css("border-color","#ed5565");
                    $("#validate_hint").show();
                    $("#validate_hint").children('i').show();
                    $("#validate_hint").children("span").html("验证码错误");
                    $("#validate_hint").css("color","#ed5565");
                    is_validate =false;   
        }else{
          $.ajax({
            url:"../validate.php",
            type:'post',
            data:{code:Trim($(this).val())},
            success:function(data){
                if(data==0){
                    $("input[name=validate]").css("border-color","#ed5565");
                    $("#validate_hint").show();
                    $("#validate_hint").children('i').show();
                    $("#validate_hint").children("span").html("验证码错误");
                    $("#validate_hint").css("color","#ed5565");
                    is_validate =false;
                }else if(data==1){
                    is_validate = true;
                    $("input[name=validate]").css("border-color","#bac7d2");
                    $("#validate_hint").hide();
                    $("#validate_hint").children('i').hide();
                    $("#validate_hint").children("span").html("");
                }else if(data==2){
                    $("input[name=validate]").css("border-color","#ed5565");
                    $("#validate_hint").show();
                    $("#validate_hint").children('i').show();
                    $("#validate_hint").children("span").html("验证码错误");
                    $("#validate_hint").css("color","#ed5565");
                    is_validate =false;
                }
            }
        })   
        }
        
    }
});

//写cookies
function setCookie(name, value) {
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
//读取cookies
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg)) return unescape(arr[2]);
    else return null;
}
//删除cookies
function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

$("#login").click(function(e){
    console.log(2)
    $user =getUser();
    $pwd =getPwd();
    if($("input[name=validate]").val()!=""){

        is_through = true;
    }else{
        $("input[name=validate]").css("border-color","#ed5565");
        $("#validate_hint").show();
        $("#validate_hint").children('i').show();
        $("#validate_hint").children("span").html("请填写验证码");
        $("#validate_hint").css("color","#ed5565");
        is_through = false;

    }
    var is_user=false;
    if (is_through&&is_validate&&$("input[name=user]").val()!=""&&$("input[name=pwd]").val()!=""&&$('input[name=validate]').val()!=""){
          $.ajax({
            url:"is_user_exists.php",
            type:'post',
            data:{phone:Trim($user)},
            success:function(data){
                //表明用户不存在
                if(data==1){
                $("input[name=user]").css("border-color","#ed5565");
                $("#user_hint").show();
                $("#user_hint").children('i').show();
                $("#user_hint").children("span").html("用户名不存在，请检查");
                $("#user_hint").css("color","#ed5565");
                }else if (data==0){
                $.ajax({
                    url:"../login.php",
                    type:'post',
                    data:{user:Trim($user),pwd:Trim($pwd)},
                    success:function(data){
                        console.log(data);
                        if(data==0){
                            $("#pwd_hint").show();
                            $("#pwd_hint").children('i').show();
                            $("#pwd_hint").children("span").html("用户名密码不匹配");
                            $("#pwd_hint").css("color","#ed5565");
                        }else if(data==1){
                            window.location.reload();
                }else if(data=2){
                           $("#pwd_hint").show();
                            $("#pwd_hint").children('i').show();
                            $("#pwd_hint").children("span").html("已离职人员不可登入系统");
                            $("#pwd_hint").css("color","#ed5565");
                }
            }
        })
                }
            }
        })
    }
})
   
  $('input[name=remember]').change(function () {
    if ($("input[name=user]").val() == ""){
       swal({
             title: "",
            text: "用户名不能为空"
        });
       $('input[name=remember]').attr("checked",false);
    }else if($("input[name=pwd]").val() == "")
    {
     swal({
             title: "",
            text: "密码不能为空"
        });
      $('input[name=remember]').attr("checked",false);
    }else{
        if ($('input[name=remember]').prop("checked")) {
            setCookie("uname", $("input[name=user]").val());
            setCookie("upwd", $("input[name=pwd]").val());   
        }
         else {
          delCookie("uname");
          delCookie("upwd");
         }
    }  
   });
   

$(document).ready(function(){
     if (getCookie("uname") != null&&getCookie("upwd")!=null)
    {
        $('input[name=remember]').attr("checked", "checked");
        $("input[name=user]").val(getCookie("uname"));
        $("input[name=pwd]").val(getCookie("upwd"));
    }
    //获取焦点
    $("input[name=user]").focus();
    document.body.onkeydown=keyListener;
    function keyListener(e){
        if(e.keyCode==13){
         $user =getUser();
         $pwd =getPwd();
         $validate =getValidate();
    if($("input[name=validate]").val()!=""){

        is_through = true;
    }else{
        $("input[name=validate]").css("border-color","#ed5565");
        $("#validate_hint").show();
        $("#validate_hint").children('i').show();
        $("#validate_hint").children("span").html("请填写验证码");
        $("#validate_hint").css("color","#ed5565");
        is_through = false;

    }
    var is_user=false;
    if (is_through&&is_validate){
          $.ajax({
            url:"is_user_exists.php",
            type:'post',
            data:{phone:Trim($user)},
            success:function(data){
                //表明用户不存在
                if(data==1){
                $("input[name=user]").css("border-color","#ed5565");
                $("#user_hint").show();
                $("#user_hint").children('i').show();
                $("#user_hint").children("span").html("用户名不存在，请检查");
                $("#user_hint").css("color","#ed5565");
                }else{
                $.ajax({
                    url:"../login.php",
                    type:'post',
                    data:{user:Trim($user),pwd:Trim($pwd)},
                    success:function(data){
                        if(data==0){
                            swal({
                                title: "",
                                text: "用户名密码不匹配"
                            });
                        }else if(data==1){
                            window.location.reload();
                }else if(data==2){
                     $("#pwd_hint").show();
                        $("#pwd_hint").children('i').show();
                        $("#pwd_hint").children("span").html("已离职人员不可登入系统");
                        $("#pwd_hint").css("color","#ed5565");
 
                }
                    }
                })
                }
            }
        })
    }
    }
}
})


