$(document).on('turbolinks:load', function() {
    $(function() {
    winW = $(".horizon-field").width();
    speed = 1200;
    $('#horizon').css({
        left: winW / 2
    }).animate({
        left: 0,
        width: winW
    }, speed);
});

$(function(){
    $(".select-field").hide().fadeIn(1200);
});

$(function () {
    $('.blow1').hide();
    $('#blow-field1').hover(
    function () {
        $('.blow1').fadeIn('fast');
    },
    function () {
        $('.blow1').fadeOut('fast');
    });
});

$(function () {
    $('.blow2').hide();
    $('#blow-field2').hover(
    function () {
        $('.blow2').fadeIn('fast');
    },
    function () {
        $('.blow2').fadeOut('fast');
    });
});

$(function () {
    $('.blow3').hide();
    $('#blow-field3').hover(
    function () {
        $('.blow3').fadeIn('fast');
    },
    function () {
        $('.blow3').fadeOut('fast');
    });
});

$(function () {
    $('.blow4').hide();
    $('#blow-field4').hover(
    function () {
        $('.blow4').fadeIn('fast');
    },
    function () {
        $('.blow4').fadeOut('fast');
    });
});

$(function () {
    $('.blow5').hide();
    $('#blow-field5').hover(
    function () {
        $('.blow5').fadeIn('fast');
    },
    function () {
        $('.blow5').fadeOut('fast');
    });
});

$(function () {
    $('.blow6').hide();
    $('#blow-field6').hover(
    function () {
        $('.blow6').fadeIn('fast');
    },
    function () {
        $('.blow6').fadeOut('fast');
    });
});

$(function () {
    $('.blow7').hide();
    $('#blow-field7').hover(
    function () {
        $('.blow7').fadeIn('fast');
    },
    function () {
        $('.blow7').fadeOut('fast');
    });
});

$(function () {
    $('.blow8').hide();
    $('#blow-field8').hover(
    function () {
        $('.blow8').fadeIn('fast');
    },
    function () {
        $('.blow8').fadeOut('fast');
    });
});

$(function () {
    $('.blow9').hide();
    $('#blow-field9').hover(
    function () {
        $('.blow9').fadeIn('fast');
    },
    function () {
        $('.blow9').fadeOut('fast');
    });
});
});
