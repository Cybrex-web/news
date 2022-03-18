$(window).scroll(function(){
    if($(this).scrollTop()>1){
        $('header').addClass("bot");
        $('.auth').addClass("bot");
        $('.navigation').addClass("bot");
    }
    else{
        $('header').removeClass("bot");
        $('.auth').removeClass("bot");
        $('.navigation').removeClass("bot");
    }
});
$('header').mouseover(function(){
    $('header').removeClass("bot");
    $('.auth').removeClass("bot");
    $('.navigation').removeClass("bot");
})

