$(function () {
    console.log(123)
    //首页根据背景图设置高度
    var bgWidth = $('.HeaderBg').width();
    $('.HeaderBg').height(900/1920*bgWidth);


    /* ÂÖ²¥ */
    var rightCount = 0;
    var leftCount = 0;
    var left = 0;
    var width = $('.Family-Content-Body-Center').width();
    $('.Family-Content-Body-Right').click(function () {
        rightCount ++;
        left -= width;
        $(this).siblings('.Family-Content-Body-Center').find('.scroll-content-body').css('left',left);
    })
    $('.Family-Content-Body-Left').click(function () {
        leftCount ++;
        left += width;
        $(this).siblings('.Family-Content-Body-Center').find('.scroll-content-body').css('left',left);
    })



    // 首页背景
    var aCount = $('.Head-Category>.Header-Nav-Menu-Btn').length;
    $('.HeaderBg .Head-Category').width(aCount*120);

    //轮播
    var swiper = new Swiper('.lunbo .swiper-container', {
        slidesPerView: 6,
        spaceBetween: 30,
         navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        }
    });
    
  
   //数字自增到某一值动画参数（目标元素,自定义配置）
    function NumAutoPlusAnimation(targetEle, options) {
        /*可以自己改造下传入的参数，按照自己的需求和喜好封装该函数*/
        //不传配置就把它绑定在相应html元素的data-xxxx属性上吧
        options = options || {};

        var $this = document.querySelector(targetEle),
            time = options.time || $this.data('time'), //总时间--毫秒为单位
            finalNum = options.num || $this.data('value'), //要显示的真实数值
            regulator = options.regulator || 100, //调速器，改变regulator的数值可以调节数字改变的速度

            step = finalNum / (time / regulator),/*每30ms增加的数值--*/
            count = 0, //计数器
            initial = 0;

        var timer2 = setInterval(function() {

            count = count + step;

            if(count >= finalNum) {
                clearInterval(timer2);
                count = finalNum;
            }
            //t未发生改变的话就直接返回
            //避免调用text函数，提高DOM性能
            var t = Math.floor(count);
            if(t == initial) return;

            initial = t;

            $this.innerHTML = initial.toString();
        }, 30);
    }
    
    NumAutoPlusAnimation(".HeaderBg>h3>span", {
        time: 500,
        num: $('#zuNum').val(),
        regulator: 10
    })

})



