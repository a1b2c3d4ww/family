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

var primary_company_through=false;
 $("#submit_primary_company").click(function (){
     if($("input[name=primary_company_name]").val()==""){
        primary_company_through=false;
          $("input[name=primary_company_name]").css("border-color","#ee2223");
          $("input[name=primary_company_name]").next("span").show();
          $("input[name=primary_company_name]").next("span").text("公司的名称不能为空");
          $("input[name=primary_company_name]").next("span").css('color',"#ee2223");
     }else{
       if(primary_company_through){
        $("#primarycompany").submit();
         $("input[name=primary_company_name]").val('');
         $("textarea[name=company_desc]").val('');
       }
     }
 })
 $("input[name=primary_company_name]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        primary_company_through= false;
        $("input[name=primary_company_name]").css("border-color","#ee2223");
        $("input[name=primary_company_name]").next("span").show();
        $("input[name=primary_company_name]").next("span").text("公司的名称不能包含特殊字符！@#等");
        $("input[name=primary_company_name]").next("span").css('color',"#ee2223");
     }else{
      $.ajax({
        url:'is_company_exists.php',
        type:'post',
        data:{"company_name":$(this).val()},
        success:function(data){
           if(data==0){
            primary_company_through= true;
        $("input[name=primary_company_name]").css("border-color","#bac7d2");
        $("input[name=primary_company_name]").next("span").text("");
         if($("input[name=primary_company_name]").val().length==25){
                   $("input[name=primary_company_name]").next("span").show();
                   $("input[name=primary_company_name]").next("span").text("最多25个字符");
                   $("input[name=primary_company_name]").next("span").css('color', "#999");
               }
           }else{
            primary_company_through= false;
             $("input[name=primary_company_name]").css("border-color","#ee2223");
              $("input[name=primary_company_name]").next("span").show();
              $("input[name=primary_company_name]").next("span").text("公司的名称已存在，请更换");
              $("input[name=primary_company_name]").next("span").css('color',"#ee2223");
           }
        }
      })
        
     }
 })
   /* $("textarea[name=primary_company_desc]").bind('input propertychange',function(){
   if (!checks($(this).val())){
    primary_company_through= false;
    $(this).css("border-color","#ee2223");
          $("textarea[name=primary_company_desc]").css("border-color","#ee2223");
          $("textarea[name=primary_company_desc]").next("span").show();
          $("textarea[name=primary_company_desc]").next("span").text("公司的描述不能包含特殊字符!@#等");
          $("textarea[name=primary_company_desc]").next("span").css('color',"#ee2223");
     }else{
        primary_company_through= true;
         $("textarea[name=primary_company_desc]").css("border-color","#bac7d2");
        $("textarea[name=primary_company_desc]").next("span").text("");
     }
 })*/
$("textarea[name=primary_company_desc]").bind('input propertychange',function(){
  if($("textarea[name=primary_company_desc]").val().length==100){
                   $("textarea[name=primary_company_desc]").next("span").show();
                   $("textarea[name=primary_company_desc]").next("span").text("最多100个字符");
                   $("textarea[name=primary_company_desc]").next("span").css('color', "#999");
               }
})
$("textarea[name=company_desc]").bind('input propertychange',function(){
  if($("textarea[name=company_desc]").val().length==100){
                   $("textarea[name=company_desc]").next("span").show();
                   $("textarea[name=company_desc]").next("span").text("最多100个字符");
                   $("textarea[name=company_desc]").next("span").css('color', "#999");
               }
})


 var company_through=false;
 $("#submit_company").click(function (){
     if($("input[name=company_name]").val()==""){
        company_through=false;
          $("input[name=company_name]").css("border-color","#ee2223");
          $("input[name=company_name]").next("span").show();
          $("input[name=company_name]").next("span").text("公司的名称不能为空");
          $("input[name=company_name]").next("span").css('color',"#ee2223");
     }else{
       if(company_through){
        $("#company").submit();
         $("input[name=company_name]").val('');
         $("textarea[name=company_desc]").val('');
       }
     }
 })
 $("input[name=company_name]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        company_through= false;
        $("input[name=company_name]").css("border-color","#ee2223");
        $("input[name=company_name]").next("span").show();
        $("input[name=company_name]").next("span").text("公司的名称不能包含特殊字符！@#等");
        $("input[name=company_name]").next("span").css('color',"#ee2223");
     }else{
      $.ajax({
        url:'is_company_exists.php',
        type:'post',
        data:{"company_name":$(this).val()},
        success:function(data){
           if(data==0){
            company_through= true;
        $("input[name=company_name]").css("border-color","#bac7d2");
        $("input[name=company_name]").next("span").text("");
        if($("input[name=company_name]").val().length==25){
                   $("input[name=company_name]").next("span").show();
                   $("input[name=company_name]").next("span").text("最多25个字符");
                   $("input[name=company_name]").next("span").css('color', "#999");
               }
           }else{
            company_through= false;
             $("input[name=company_name]").css("border-color","#ee2223");
              $("input[name=company_name]").next("span").show();
              $("input[name=company_name]").next("span").text("公司的名称已存在，请更换");
              $("input[name=company_name]").next("span").css('color',"#ee2223");
           }
        }
      })
        
     }
 })
   /* $("textarea[name=company_desc]").bind('input propertychange',function(){
   if (!checks($(this).val())){
    company_through= false;
    $(this).css("border-color","#ee2223");
          $("textarea[name=company_desc]").css("border-color","#ee2223");
          $("textarea[name=company_desc]").next("span").show();
          $("textarea[name=company_desc]").next("span").text("公司的描述不能包含特殊字符!@#等");
          $("textarea[name=company_desc]").next("span").css('color',"#ee2223");
     }else{
        company_through= true;
         $("textarea[name=company_desc]").css("border-color","#bac7d2");
        $("textarea[name=company_desc]").next("span").text("");
     }
 })*/


var project_through=false;
 $("#submit_project").click(function (){
     if($("input[name=project_name]").val()==""){
          $("input[name=project_name]").css("border-color","#ee2223");
          $("input[name=project_name]").next("span").show();
          $("input[name=project_name]").next("span").text("项目的名称不能为空");
          $("input[name=project_name]").next("span").css('color',"#ee2223");
     }else{
       if(project_through){
        $("#project").submit();
         $("input[name=project_name]").val('');
         $("textarea[name=project_desc]").val('');
       }else{
       }
     }
 })
  $("input[name=project_name]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        project_through= false;
        $("input[name=project_name]").css("border-color","#ee2223");
        $("input[name=project_name]").next("span").show();
        $("input[name=project_name]").next("span").text("项目的名称不能包含特殊字符！@#等");
        $("input[name=project_name]").next("span").css('color',"#ee2223");
     }else{
          $.ajax({
        url:'is_project_exists.php',
        type:'post',
        data:{"project_name":$(this).val()},
        success:function(data){
           if(data==0){
           project_through= true;
        $("input[name=project_name]").css("border-color","#bac7d2");
        $("input[name=project_name]").next("span").text("");
           }else{
             $("input[name=project_name]").css("border-color","#ee2223");
              $("input[name=project_name]").next("span").show();
              $("input[name=project_name]").next("span").text("项目的名称已存在，请更换");
              $("input[name=project_name]").next("span").css('color',"#ee2223");
           }
        }
      })
        
     }
 })
   /* $("textarea[name=project_desc]").bind('input propertychange',function(){
   if (!checks($(this).val())){
    project_through= false;
    $(this).css("border-color","#ee2223");
          $("textarea[name=project_desc]").css("border-color","#ee2223");
          $("textarea[name=project_desc]").next("span").show();
          $("textarea[name=project_desc]").next("span").text("项目的描述不能包含特殊字符!@#等");
          $("textarea[name=project_desc]").next("span").css('color',"#ee2223");
     }else{
        project_through= true;
         $("textarea[name=project_desc]").css("border-color","#bac7d2");
        $("textarea[name=project_desc]").next("span").text("");
     }
 })*/

    var depart_through=false;
 $("#submit_depart").click(function (){
                if($("input[name=depart_name]").val()==""){
                  depart_through=false;
                $("input[name=depart_name]").css("border-color","#ee2223");
                $("input[name=depart_name]").next("span").show();
                $("input[name=depart_name]").next("span").text("部门的名称不能为空");
                $("input[name=depart_name]").next("span").css('color',"#ee2223");
           }else{
             if(depart_through){
              $("#depart").submit();
               $("input[name=depart_name]").val('');
               $("textarea[name=depart_desc]").val('');
             }
             }         
 })

 $("input[name=depart_name]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        depart_through= false;
        $("input[name=depart_name]").css("border-color","#ee2223");
        $("input[name=depart_name]").next("span").show();
        $("input[name=depart_name]").next("span").text("部门的名称不能包含特殊字符！@#等");
        $("input[name=depart_name]").next("span").css('color',"#ee2223");
     }else{
       $.ajax({
        url:'is_depart_exists.php',
        type:'post',
        data:{"depart_name":$(this).val(),"company_id":$("input[name=company_id2]").val()},
        success:function(data){
          console.log(data);
           if(data==0){
            depart_through= true;
        $("input[name=depart_name]").css("border-color","#bac7d2");
        $("input[name=depart_name]").next("span").text("");
               if($("input[name=depart_name]").val().length==25){
                   $("input[name=depart_name]").next("span").show();
                   $("input[name=depart_name]").next("span").text("最多25个字符");
                   $("input[name=depart_name]").next("span").css('color', "#999");
               }
           }else{
            depart_through= false;
             $("input[name=depart_name]").css("border-color","#ee2223");
              $("input[name=depart_name]").next("span").show();
              $("input[name=depart_name]").next("span").text("部门的名称已存在，请更换");
              $("input[name=depart_name]").next("span").css('color',"#ee2223");
           }
        }
      })
     }
 })

  var depart_through2=false;
 $("#submit_depart2").click(function (){
  dump(depart_through2);
                if($("input[name=depart_name2]").val()==""){
                  depart_through2=false;
                $("input[name=depart_name2]").css("border-color","#ee2223");
                $("input[name=depart_name2]").next("span").show();
                $("input[name=depart_name2]").next("span").text("部门的名称不能为空");
                $("input[name=depart_name2]").next("span").css('color',"#ee2223");
           }else{
             if(depart_through2){
              $("#depart2").submit();
               $("input[name=depart_name2]").val('');
               $("textarea[name=depart_desc]").val('');
             }
             }         
 })
 
 $("input[name=depart_name2]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        depart_through2= false;
        $("input[name=depart_name2]").css("border-color","#ee2223");
        $("input[name=depart_name2]").next("span").show();
        $("input[name=depart_name2]").next("span").text("部门的名称不能包含特殊字符！@#等");
        $("input[name=depart_name2]").next("span").css('color',"#ee2223");
     }else{
       $.ajax({
        url:'is_depart2_exists.php',
        type:'post',
        data:{"depart_name":$(this).val(),"project_id":$("input[name=project_id2]").val()},
        success:function(data){
          console.log(data);
           if(data==0){
            depart_through2= true;
        $("input[name=depart_name2]").css("border-color","#bac7d2");
        $("input[name=depart_name2]").next("span").text("");
               if($("input[name=depart_name2]").val().length==25){
                   $("input[name=depart_name2]").next("span").show();
                   $("input[name=depart_name2]").next("span").text("最多25个字符");
                   $("input[name=depart_name2]").next("span").css('color', "#999");
               }
           }else{
            depart_through2= false;
             $("input[name=depart_name2]").css("border-color","#ee2223");
              $("input[name=depart_name2]").next("span").show();
              $("input[name=depart_name2]").next("span").text("部门的名称已存在，请更换");
              $("input[name=depart_name2]").next("span").css('color',"#ee2223");
           }
        }
      })
     }
 })




//职位的验证
 var job_title_through=false;
 $("#submit_job_title").click(function (){
                if($("input[name=job_title_name]").val()==""){
                  job_title_through=false;
                $("input[name=job_title_name]").css("border-color","#ee2223");
                $("input[name=job_title_name]").next("span").show();
                $("input[name=job_title_name]").next("span").text("部门的名称不能为空");
                $("input[name=job_title_name]").next("span").css('color',"#ee2223");
           }else{
             if(job_title_through){
              $("#job_title").submit();
               $("input[name=job_title_name]").val('');
             }
             }         
 })
 
 $("input[name=job_title_name]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        job_title_through= false;
        $("input[name=job_title_name]").css("border-color","#ee2223");
        $("input[name=job_title_name]").next("span").show();
        $("input[name=job_title_name]").next("span").text("职位的名称不能包含特殊字符！@#等");
        $("input[name=job_title_name]").next("span").css('color',"#ee2223");
     }else{
       $.ajax({
        url:'is_job_title_exists.php',
        type:'post',
        data:{"job_title_name":$(this).val(),"job_title_depart_id":$("input[name=job_title_depart_id]").val()},
        success:function(data){
          console.log(data);
           if(data==0){
            job_title_through= true;
        $("input[name=job_title_name]").css("border-color","#bac7d2");
        $("input[name=job_title_name]").next("span").text("");
               if($("input[name=job_title_name]").val().length==25){
                   $("input[name=job_title_name]").next("span").show();
                   $("input[name=job_title_name]").next("span").text("最多25个字符");
                   $("input[name=job_title_name]").next("span").css('color', "#999");
               }
           }else{
            job_title_through= false;
             $("input[name=job_title_name]").css("border-color","#ee2223");
              $("input[name=job_title_name]").next("span").show();
              $("input[name=job_title_name]").next("span").text("职位的名称已存在，请更换");
              $("input[name=job_title_name]").next("span").css('color',"#ee2223");
           }
        }
      })
     }
 })
   
   //人员的验证
  var person_through=false;
 $("#submit_person").click(function (){
     if($("input[name=person_name]").val()==""){
          $("input[name=person_name]").css("border-color","#ee2223");
          $("input[name=person_name]").next("span").show();
          $("input[name=person_name]").next("span").text("姓名不能为空");
          $("input[name=person_name]").next("span").css('color',"#ee2223");
          person_through=false;
     }else if($("input[name=person_phone]").val()==""){
          $("input[name=person_phone]").css("border-color","#ee2223");
          $("input[name=person_phone]").next("span").show();
          $("input[name=person_phone]").next("span").text("手机号不能为空");
          $("input[name=person_phone]").next("span").css('color',"#ee2223");
          person_through=false;
     }else {
       if(person_through){
        $("#person").submit();
         $("input[name=person_name]").val('');
         $("input[name=person_phone]").val('');
         $("input[name=person_email]").val('');
       }
       //console.log($('input[name=acl]').val());
     }
 })
  $("input[name=person_name]").bind('input propertychange', function(){
        var reg = /^[\u4E00-\u9FA5]+$/;
        if(!reg.test($(this).val())){
             $("input[name=person_name]").css("border-color","#ee2223");
          $("input[name=person_name]").next("span").show();
          $("input[name=person_name]").next("span").text("姓名必须是中文不能是数字字母");
          $("input[name=person_name]").next("span").css('color',"#ee2223");
            person_through = false;
        }else{
            $("input[name=person_name]").css("border-color","#bac7d2");
            $("input[name=person_name]").next("span").text("");
            console.log($(this).val())
            if($("input[name=person_name]").val().length==10){
                $("input[name=person_name]").next("span").show();
                $("input[name=person_name]").next("span").text("最多10个字符");
                $("input[name=person_name]").next("span").css('color', "#999");
            }
            person_through = true;
        }
    })

    $("input[name=person_phone]").bind('input propertychange', function(){
        if(!(/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test($(this).val()))){
             $("input[name=person_phone]").css("border-color","#ee2223");
          $("input[name=person_phone]").next("span").show();
          $("input[name=person_phone]").next("span").text("手机号格式错误");
          $("input[name=person_phone]").next("span").css('color',"#ee2223");
           person_through = false;
        }else{
            $(this).css("border-color","#bac7d2");
            $(this).next("b").html("");
            $.ajax({
                url:"is_user_exists.php",
                type:'post',
                data:{phone: $.trim($(this).val())},
                success:function(data){
                   if(data==0){
                       person_through = false;
                        $("input[name=person_phone]").css("border-color","#ee2223");
                        $("input[name=person_phone]").next("span").show();
                        $("input[name=person_phone]").next("span").text("手机号已被注册请更换");
                        $("input[name=person_phone]").next("span").css('color',"#ee2223");
                   }else{
                       person_through = true;
                      $("input[name=person_phone]").css("border-color","#bac7d2");
                     $("input[name=person_phone]").next("span").text("");
                      if($("input[name=person_phone]").val().length==11){
                           $("input[name=person_phone]").next("span").show();
                           $("input[name=person_phone]").next("span").text("最多11个字符");
                           $("input[name=person_phone]").next("span").css('color', "#999");
                       }
                   }
                }
            })
        }
    })

  //邮箱验证
    $("input[name=person_email]").bind('input propertychange', function(){
        if($("input[name=person_email]").val()==""){
              person_through = true;
             $("input[name=person_email]").css("border-color","#bac7d2");
             $("input[name=person_email]").next("span").text("");
        }else if(!(/^[0-9a-zA-Z]+@(([0-9a-zA-Z]+)[.])+[a-z]{2,4}$/i.test($(this).val()))){
             $("input[name=person_email]").css("border-color","#ee2223");
          $("input[name=person_email]").next("span").show();
          $("input[name=person_email]").next("span").text("邮箱格式错误");
          $("input[name=person_email]").next("span").css('color',"#ee2223");
           person_through = false;
        }else{
            $.ajax({
                url:"is_email_exists.php",
                type:'post',
                data:{email: $.trim($(this).val())},
                success:function(data){
                   if(data==0){
                       person_through = false;
                        $("input[name=person_email]").css("border-color","#ee2223");
                        $("input[name=person_email]").next("span").show();
                        $("input[name=person_email]").next("span").text("该邮箱已被注册请更换");
                        $("input[name=person_email]").next("span").css('color',"#ee2223");
                   }else{
                       person_through = true;
                      $("input[name=person_email]").css("border-color","#bac7d2");
                     $("input[name=person_email]").next("span").text("");
                      if($("input[name=person_email]").val().length==32){
                           $("input[name=person_email]").next("span").show();
                           $("input[name=person_email]").next("span").text("最多32个字符");
                           $("input[name=person_email]").next("span").css('color', "#999");
                       }
                   }
                }
            })
        }
    })


//公司详情的验证
var company_through_detail=true;
    $("#submit_company_detail").click(function (){
     if($("input[name=company_name2]").val()==""){
        company_through_detail=false;
          $("input[name=company_name2]").css("border-color","#ee2223");
          $("input[name=company_name2]").next("span").show();
          $("input[name=company_name2]").next("span").text("公司的名称不能为空");
          $("input[name=company_name2]").next("span").css('color',"#ee2223");
     }else{
       if(company_through_detail){
        $("#company_detail").submit();
         $("input[name=company_name2]").val('');
         $("textarea[name=company_desc]").val('');
       }else{
       }
     }
 })
 $("input[name=company_name2]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        company_through_detail= false;
        $("input[name=company_name2]").css("border-color","#ee2223");
        $("input[name=company_name2]").next("span").show();
        $("input[name=company_name2]").next("span").text("公司的名称不能包含特殊字符！@#等");
        $("input[name=company_name2]").next("span").css('color',"#ee2223");
     }else{
      $.ajax({
        url:'is_company_exists.php',
        type:'post',
        data:{"company_name2":$(this).val()},
        success:function(data){
           if(data==0){
            company_through_detail= true;
        $("input[name=company_name2]").css("border-color","#bac7d2");
        $("input[name=company_name2]").next("span").text("");
         if($("input[name=company_name2]").val().length==25){
                   $("input[name=company_name2]").next("span").show();
                   $("input[name=company_name2]").next("span").text("最多25个字符");
                   $("input[name=company_name2]").next("span").css('color', "#999");
               }
           }else{
            company_through_detail= false;
             $("input[name=company_name2]").css("border-color","#ee2223");
              $("input[name=company_name2]").next("span").show();
              $("input[name=company_name2]").next("span").text("公司的名称已存在，请更换");
              $("input[name=company_name2]").next("span").css('color',"#ee2223");
           }
        }
      })
        
     }
 })

    $("textarea[name=company_desc2]").bind('input propertychange',function(){
   if (!checks($(this).val())){
    company_through_detail= false;
    $(this).css("border-color","#ee2223");
          $("textarea[name=company_desc2]").css("border-color","#ee2223");
          $("textarea[name=company_desc2]").next("span").show();
          $("textarea[name=company_desc2]").next("span").text("公司的描述不能包含特殊字符!@#等");
          $("textarea[name=company_desc2]").next("span").css('color',"#ee2223");
     }else{
        company_through_detail= true;
         $("textarea[name=company_desc2]").css("border-color","#bac7d2");
        $("textarea[name=company_desc2]").next("span").text("");
         if($("textarea[name=company_desc2]").val().length==100){
                   $("textarea[name=company_desc2]").next("span").show();
                   $("textarea[name=company_desc2]").next("span").text("最多100个字符");
                   $("textarea[name=company_desc2]").next("span").css('color', "#999");
               }
     }
 })


var project_detail_through=true;
 $("#submit_project_detail").click(function (){
     if($("input[name=project_name_detail]").val()==""){
          $("input[name=project_name_detail]").css("border-color","#ee2223");
          $("input[name=project_name_detail]").next("span").show();
          $("input[name=project_name_detail]").next("span").text("项目的名称不能为空");
          $("input[name=project_name_detail]").next("span").css('color',"#ee2223");
     }else{
       if(project_detail_through){
        $("#project_detail").submit();
         $("input[name=project_name_detail]").val('');
         $("textarea[name=project_desc]").val('');
       }else{
       }
     }
 })
  $("input[name=project_name_detail]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        project_detail_through= false;
        $("input[name=project_name_detail]").css("border-color","#ee2223");
        $("input[name=project_name_detail]").next("span").show();
        $("input[name=project_name_detail]").next("span").text("项目的名称不能包含特殊字符！@#等");
        $("input[name=project_name_detail]").next("span").css('color',"#ee2223");
     }else{
          $.ajax({
        url:'is_project_exists.php',
        type:'post',
        data:{"project_name_detail":$(this).val(),'origin_project_name':$("input[name=origin_project_name]")},
        success:function(data){
           if(data==0){
           project_detail_through= true;
        $("input[name=project_name_detail]").css("border-color","#bac7d2");
        $("input[name=project_name_detail]").next("span").text("");
           }else{
             $("input[name=project_name_detail]").css("border-color","#ee2223");
              $("input[name=project_name_detail]").next("span").show();
              $("input[name=project_name_detail]").next("span").text("项目的名称已存在，请更换");
              $("input[name=project_name_detail]").next("span").css('color',"#ee2223");
           }
        }
      })
        
     }
 })
    $("textarea[name=project_desc_detail]").bind('input propertychange',function(){
   if (!checks($(this).val())){
    project_detail_through= false;
    $(this).css("border-color","#ee2223");
          $("textarea[name=project_desc_detail]").css("border-color","#ee2223");
          $("textarea[name=project_desc_detail]").next("span").show();
          $("textarea[name=project_desc_detail]").next("span").text("项目的描述不能包含特殊字符!@#等");
          $("textarea[name=project_desc_detail]").next("span").css('color',"#ee2223");
     }else{
        project_detail_through= true;
         $("textarea[name=project_desc_detail]").css("border-color","#bac7d2");
        $("textarea[name=project_desc_detail]").next("span").text("");
     }
 })


//部门详情的验证
  var depart_detail_through=true;
 $("#submit_depart_detail").click(function (){
                if($("input[name=depart_name_detail]").val()==""){
                  depart_detail_through=false;
                $("input[name=depart_name_detail]").css("border-color","#ee2223");
                $("input[name=depart_name_detail]").next("span").show();
                $("input[name=depart_name_detail]").next("span").text("部门的名称不能为空");
                $("input[name=depart_name_detail]").next("span").css('color',"#ee2223");
           }else{
             if(depart_detail_through){
              $("#depart_detail").submit();
               $("input[name=depart_name_detail]").val('');
             }
             }         
 })

 $("input[name=depart_name_detail]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        depart_detail_through= false;
        $("input[name=depart_name_detail]").css("border-color","#ee2223");
        $("input[name=depart_name_detail]").next("span").show();
        $("input[name=depart_name_detail]").next("span").text("部门的名称不能包含特殊字符！@#等");
        $("input[name=depart_name_detail]").next("span").css('color',"#ee2223");
     }else{
       $.ajax({
        url:'is_depart_exists.php',
        type:'post',
        data:{"depart_name":$(this).val(),"company_id":$("input[name=parent_company_id]").val(),"project_id":$("input[name=parent_project_id]").val(),"origin_depart_name":$('input[name=origin_depart_name]').val()},
        success:function(data){
           if(data==0){
            depart_detail_through= true;
        $("input[name=depart_name_detail]").css("border-color","#bac7d2");
        $("input[name=depart_name_detail]").next("span").text("");
               if($("input[name=depart_name_detail]").val().length==25){
                   $("input[name=depart_name_detail]").next("span").show();
                   $("input[name=depart_name_detail]").next("span").text("最多25个字符");
                   $("input[name=depart_name_detail]").next("span").css('color', "#999");
               }
           }else{
            depart_detail_through= false;
             $("input[name=depart_name_detail]").css("border-color","#ee2223");
              $("input[name=depart_name_detail]").next("span").show();
              $("input[name=depart_name_detail]").next("span").text("部门的名称已存在，请更换");
              $("input[name=depart_name_detail]").next("span").css('color',"#ee2223");
           }
        }
      })
     }
 })

 
//职位详情的验证
 var job_title_detail_through=true;
 $("#submit_job_title_detail").click(function (){
                if($("input[name=job_title_name_detail]").val()==""){
                  job_title_detail_through=false;
                $("input[name=job_title_name_detail]").css("border-color","#ee2223");
                $("input[name=job_title_name_detail]").next("span").show();
                $("input[name=job_title_name_detail]").next("span").text("职位的名称不能为空");
                $("input[name=job_title_name_detail]").next("span").css('color',"#ee2223");
           }else{
             if(job_title_detail_through){
              $("#job_title_detail").submit();
               $("input[name=job_title_name_detail]").val('');
             }
             }         
 })

 $("input[name=job_title_name_detail]").bind('input propertychange',function(){
   if (!checks($(this).val())){
        job_title_detail_through= false;
        $("input[name=job_title_name_detail]").css("border-color","#ee2223");
        $("input[name=job_title_name_detail]").next("span").show();
        $("input[name=job_title_name_detail]").next("span").text("职位的名称不能包含特殊字符！@#等");
        $("input[name=job_title_name_detail]").next("span").css('color',"#ee2223");
     }else{
       $.ajax({
        url:'is_job_title_exists.php',
        type:'post',
        data:{"job_title_name":$(this).val(),"job_title_depart_id":$("input[name=parent_depart_id]").val(),"origin_job_title_name":$("input[name=origin_job_title_name]").val()},
        success:function(data){
           if(data==0){
            job_title_detail_through= true;
        $("input[name=job_title_name_detail]").css("border-color","#bac7d2");
        $("input[name=job_title_name_detail]").next("span").text("");
               if($("input[name=job_title_name_detail]").val().length==25){
                   $("input[name=job_title_name_detail]").next("span").show();
                   $("input[name=job_title_name_detail]").next("span").text("最多25个字符");
                   $("input[name=job_title_name_detail]").next("span").css('color', "#999");
               }
           }else{
            job_title_detail_through= false;
             $("input[name=job_title_name_detail]").css("border-color","#ee2223");
              $("input[name=job_title_name_detail]").next("span").show();
              $("input[name=job_title_name_detail]").next("span").text("职位的名称已存在，请更换");
              $("input[name=job_title_name_detail]").next("span").css('color',"#ee2223");
           }
        }
      })
     }
 })

   //人员详情的验证
  var person_detail_through=true;
 $("#submit_person_detail").click(function (){
     if($("input[name=person_name_detail]").val()==""){
          $("input[name=person_name_detail]").css("border-color","#ee2223");
          $("input[name=person_name_detail]").next("span").show();
          $("input[name=person_name_detail]").next("span").text("姓名不能为空");
          $("input[name=person_name_detail]").next("span").css('color',"#ee2223");
          person_detail_through=false;
     }else if($("input[name=person_phone_detail]").val()==""){
          $("input[name=person_phone_detail]").css("border-color","#ee2223");
          $("input[name=person_phone_detail]").next("span").show();
          $("input[name=person_phone_detail]").next("span").text("手机号不能为空");
          $("input[name=person_phone_detail]").next("span").css('color',"#ee2223");
          person_detail_through=false;
     }else{
       if(person_detail_through){
          var trueId=$("input[name=current_node_id]").val();
          $("[true_id="+trueId+"]").children("a").text($("input[name=person_name_detail]").val())   
                   $(".guanbi").click();     
                   var timer=setTimeout(function(){
                       $("[true_id="+trueId+"]").children("div").click();                
                   },200)
                             
        $("#person_detail").submit();
         $("input[name=person_name_detail]").val('');
         $("input[name=person_phone_detail]").val('');
         $("input[name=person_email_detail]").val('');
       }else{

       }
     }
 })
  $("input[name=person_name_detail]").bind('input propertychange', function(){
        var reg = /^[\u4E00-\u9FA5]+$/;
        if(!reg.test($(this).val())){
             $("input[name=person_name_detail]").css("border-color","#ee2223");
          $("input[name=person_name_detail]").next("span").show();
          $("input[name=person_name_detail]").next("span").text("姓名必须是中文不能是数字字母");
          $("input[name=person_name_detail]").next("span").css('color',"#ee2223");
            person_detail_through = false;
        }else{
            $("input[name=person_name_detail]").css("border-color","#bac7d2");
            $("input[name=person_name_detail]").next("span").text("");
            if($("input[name=person_name_detail]").val().length==10){
                $("input[name=person_name_detail]").next("span").show();
                $("input[name=person_name_detail]").next("span").text("最多10个字符");
                $("input[name=person_name_detail]").next("span").css('color', "#999");
            }
            person_detail_through = true;
        }
    })

    $("input[name=person_phone_detail]").bind('input propertychange', function(){
        if(!(/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test($(this).val()))){
             $("input[name=person_phone_detail]").css("border-color","#ee2223");
          $("input[name=person_phone_detail]").next("span").show();
          $("input[name=person_phone_detail]").next("span").text("手机号格式错误");
          $("input[name=person_phone_detail]").next("span").css('color',"#ee2223");
           person_detail_through = false;
        }else{
            $(this).css("border-color","#bac7d2");
            $(this).next("b").html("");
            $.ajax({
                url:"is_user_exists.php",
                type:'post',
                data:{phone:$.trim($(this).val()),origin_person_phone:$("input[name=origin_person_phone]").val()},
                success:function(data){
                   console.log(data);
                   if(data==0){
                       person_detail_through = false;
                        $("input[name=person_phone_detail]").css("border-color","#ee2223");
                        $("input[name=person_phone_detail]").next("span").show();
                        $("input[name=person_phone_detail]").next("span").text("手机号已被注册请更换");
                        $("input[name=person_phone_detail]").next("span").css('color',"#ee2223");
                   }else{
                       person_detail_through = true;
                      $("input[name=person_phone_detail]").css("border-color","#bac7d2");
                     $("input[name=person_phone_detail]").next("span").text("");
                      if($("input[name=person_phone_detail]").val().length==11){
                           $("input[name=person_phone_detail]").next("span").show();
                           $("input[name=person_phone_detail]").next("span").text("最多11个字符");
                           $("input[name=person_phone_detail]").next("span").css('color', "#999");
                       }
                   }
                }
            })
        }
    })

  //邮箱验证
    $("input[name=person_email_detail]").bind('input propertychange', function(){

        if($("input[name=person_email_detail]").val()==""){
              person_detail_through = true;
             $("input[name=person_email]").css("border-color","#bac7d2");
             $("input[name=person_email]").next("span").text("");
        }else if(!(/^[0-9a-zA-Z]+@(([0-9a-zA-Z]+)[.])+[a-z]{2,4}$/i.test($(this).val()))){
             $("input[name=person_email_detail]").css("border-color","#ee2223");
          $("input[name=person_email_detail]").next("span").show();
          $("input[name=person_email_detail]").next("span").text("邮箱格式错误");
          $("input[name=person_email_detail]").next("span").css('color',"#ee2223");
           person_detail_through = false;
        }else{
            $.ajax({
                url:"is_email_exists.php",
                type:'post',
                data:{email:$.trim($(this).val()),origin_person_email:$("input[name=origin_person_email]").val()},
                success:function(data){
                  console.log(data);
                   if(data==0){
                       person_detail_through = false;
                        $("input[name=person_email_detail]").css("border-color","#ee2223");
                        $("input[name=person_email_detail]").next("span").show();
                        $("input[name=person_email_detail]").next("span").text("该邮箱已被注册请更换");
                        $("input[name=person_email_detail]").next("span").css('color',"#ee2223");
                   }else{
                       person_detail_through = true;
                      $("input[name=person_email_detail]").css("border-color","#bac7d2");
                     $("input[name=person_email_detail]").next("span").text("");
                     if($("input[name=person_email_detail]").val().length==32){
                           $("input[name=person_email_detail]").next("span").show();
                           $("input[name=person_email_detail]").next("span").text("最多32个字符");
                           $("input[name=person_email_detail]").next("span").css('color', "#999");
                       }
                   }
                }
            })
        }
    })

   

