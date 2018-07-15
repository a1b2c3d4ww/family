$(function () {
	//tab切换
    $('.user-nav .user-nav-btn').click(function () {
        $(this).addClass('user-nav-btn-active').siblings('.user-nav-btn').removeClass('user-nav-btn-active');
    })


    var PASS;
    var reg = /^\w{6,}$/;
    function Trim(str)
    {
         result = str.replace(/\s/g,"");
         return result;
     }
    function getopwd(){
        if(!$('input[name=oldpwd]').val()){
            $('input[name=oldpwd]').css("border-color","#ed5565");
            $('input[name=oldpwd]').next().text('原密码不能为空').css('color','#ed5565');
        }else if(!reg.test($('input[name=oldpwd]').val())){
            $('input[name=oldpwd]').css("border-color","#ed5565");
            $('input[name=oldpwd]').next().text('密码不能少于6位').css('color','#ed5565');
        }else{
             return $('input[name=oldpwd]').val();
        }
    }
    function getnpwd(){
        if(!$('input[name=newpwd]').val()){
            $('input[name=newpwd]').css("border-color","#ed5565");
            $('input[name=newpwd]').next().text('新密码不能为空').css('color','#ed5565');
        }else if(!reg.test($('input[name=newpwd]').val())){
            $('input[name=newpwd]').css("border-color","#ed5565");
            $('input[name=newpwd]').next().text('密码不能少于6位').css('color','#ed5565');
        }else{
            return $('input[name=newpwd]').val();
        }
    }
    function getrpwd(){
        if(!$('input[name=repwd]').val()){
            $('input[name=repwd]').css("border-color","#ed5565");
            $('input[name=repwd]').next().text('重复密码不能为空').css('color','#ed5565');
        }else if(!reg.test($('input[name=repwd]').val())){
            $('input[name=repwd]').css("border-color","#ed5565");
            $('input[name=repwd]').next().text('密码不能少于6位').css('color','#ed5565');
        }else{
            return $('input[name=repwd]').val();
        }
    }

     $("input[name=oldpwd]").bind('input propertychange', function() {
      $("input[name=oldpwd]").css("border-color","#bac7d2");
         $('input[name=oldpwd]').next().text('');

    });
    $("input[name=newpwd]").bind('input propertychange', function() {
                  $("input[name=newpwd]").css("border-color","#bac7d2");
                    $('input[name=newpwd]').next().text('');

    });
    $("input[name=repwd]").bind('input propertychange', function() {
                  $("input[name=repwd]").css("border-color","#bac7d2");
                    $('input[name=repwd]').next().text('');

    });

    $('#update').click(function(){
        var opwd =  getopwd();
        var npwd =  getnpwd();
        var rpwd =  getrpwd();
        console.log(opwd);
        if(opwd&&npwd&&rpwd){
            if(npwd!=rpwd){
                 $('input[name=repwd]').css("border-color","#ed5565");
                 $('input[name=repwd]').next().text('两次输入的密码不一致').css('color','#ed5565') 
               
            }else{
                   $.ajax({ 
                url:'/home/check_opwd',
                type:'post',
                data:{'opwd':Trim(opwd)},
                success:function(data){
                    if(data==0){
                          $('input[name=oldpwd]').css("border-color","#ed5565");
                          $('input[name=oldpwd]').next().text('旧密码不正确').css('color','#ed5565');
                    }else if(data==1){
                        PASS = true;
                    }
                },
                 async:false, 
             });
                   
            }
            if(PASS){
                return true;
             }else
                return false;
                   
        }else{
            return false;
        }
    })
    $('.file').click(function(){
        $(".file").hide();
        $('.submit').show();
    });
    $('.quxiao').click(function(){
        $('.submit').hide();
        $(".file").show();
        window.location.reload(); 
    })


    
     
})
