$(document).on('turbolinks:load', function(){

  $('#security-code').on('click',function(){
    $('.security-code__description').toggleClass('active');
  })

});
