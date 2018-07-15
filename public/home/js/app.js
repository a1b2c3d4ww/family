(function () {
    var body=$('body');
 
    // 自适应屏幕缩放($(document.body).width()
    var baseWidth = 1920;
    var baseHeight = 1080;
    function adaptiveScreen() {
        $("#container").height(baseHeight*(body.width() / baseWidth))
        // console.log( $('body').width());
        $('.adaptive-screen').css({
            transform: 'scale(' + ( $('body').width() / baseWidth) + ')',
            transformOrigin: 'left top',
            width: baseWidth,
        });
    }
    adaptiveScreen();
    $(window).on('resize', adaptiveScreen);

}());