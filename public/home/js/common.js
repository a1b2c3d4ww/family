/**
 * Created by Administrator on 2018/6/14.
 */
$(function () {
     
      $(window).on('scroll', function () {
        if ($(window).scrollTop() > 300) {
          $('.gotop').show();
        } else {
          $('.gotop').hide();
        }
      });
      $(".gotop a").click(function() {
        $("html,body").animate({scrollTop:0}, 500);
      });

      
      
     
    
      
      
      /*$("body").scrollTop(5);
      console.log($("body").scrollTop());
      if($("body").scrollTop()>0){

        $('.footer').css('position','static');
      }else{
        $('.footer').css({'position':'fixed','bottom':'0'});
      }
      $("body").scrollTop(0);

      $("body").click(function(){

        if($("body").scrollTop()>0 ){
          $('.footer').css('position','static');
        }else{
          $('.footer').css({'position':'fixed','bottom':'0'});
        }
      })


      $(window).resize(function(){
        $('.footer').css('position','static');
      })*/
      
})
// 底部footer的位置
      /*
      if($('html').height()>$(window).height()){
        $('.footer').css('position','static');
      }else{
        console.log(2)
        $('.footer').css({'position':'fixed','bottom':'0'});
      }

      $("body").click(function(){
        if($('html').height()>$(window).height()){
          $('.footer').css('position','static');
        }else{
          $('.footer').css({'position':'fixed','bottom':'0'});
        }
      })*/