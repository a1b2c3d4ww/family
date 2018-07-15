$(function () {
    //ÂÖ²¥
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 10,
        loop:true,
        loopedSlides: 3, //looped slides should be the same
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 10,
        slidesPerView: 3,
        touchRatio: 0.2,
        loop: true,
        loopedSlides: 3, //looped slides should be the same
        slideToClickedSlide: true,
    });
    galleryTop.controller.control = galleryThumbs;
    galleryThumbs.controller.control = galleryTop;



    //评星
    $('#divFamilyScoreHTML .detail-score-star').mouseover(function(){
        $(this).attr('src','/home/images/start.png');
        $(this).prevAll().attr('src','/home/images/start.png');
    })
    $('#divFamilyScoreHTML .detail-score-star').mouseout(function(){
        $(this).attr('src','/home/images/start_01.png');
        $(this).prevAll().attr('src','/home/images/start_01.png');
    })
    $('#divFamilyScoreHTML .detail-score-star').click(function(){
        $(this).attr('src','/home/images/start.png');
        $(this).prevAll().attr('src','/home/images/start.png');
    })



    //评分
        $(".detail-score-star").click(function () {
            $(this).attr("src", "/home/images/start.png").prevAll().attr("src", "/home/images/start.png");
            $(this).nextAll().attr("src", "/home/images/start_01.png");
            var _Score = $(this).prevAll().length + 1;
            $("#detail-score-star-num").val(_Score);
            $("#detail-score-star-num").attr("data-enabled", "1");
            //评分过程
            var _familyId = $("#_detailCurrentFamilyid").val();
            var _Score = $("#detail-score-star-num").val();
        });

        $("#divFamilyScoreHTML").mouseleave(function () {
            var _oldscore = $("#detail-score-star-num").val();
            if (_oldscore == 0) {
                $("#divFamilyScoreHTML").find("img").each(function () {
                    $(this).attr("src", "/home/images/start_01.png");
                });
                return false;
            }
            var _newImg = $("#divFamilyScoreHTML").children().eq(_oldscore - 1);
            _newImg.attr("src", "/home/images/start.png").prevAll().attr("src", "/home/images/start.png");
            _newImg.nextAll().attr("src", "/home/images/start_01.png");
            return false;
        });


        


})

    