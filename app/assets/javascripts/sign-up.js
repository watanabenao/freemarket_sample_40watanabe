$(document).on('turbolinks:load',function(){
  $('#tell-btn').on('click', function(){
    $('#signup__user-info').hide();
    $('#signup__tel-num').show();
    $('html,body').animate({
                scrollTop: 0
            }, 10);
    $('.signup__user-info').removeClass('active').addClass('through');
    $('.signup__tel-num').toggleClass('active');
  });


  $('#address-btn').on('click',function(){
    $('#signup__tel-num').hide();
    $('#signup__address').show();
    $('html,body').animate({
                scrollTop: 0
            }, 10);
    $('.signup__tel-num').removeClass('active').addClass('through');
    $('.signup__address').toggleClass('active');
  });

  $('#card-btn').on('click',function(){
    $('#signup__address').hide();
    $('#signup__card').show();
    $('html,body').animate({
                scrollTop: 0
            }, 10);
    $('.signup__address').removeClass('active').addClass('through');
    $('.signup__pay').toggleClass('active');
  });

}); 