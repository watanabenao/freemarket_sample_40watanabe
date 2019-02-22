$(document).on('turbolinks:load', function(){

  $('.input-price').on('keyup',function(){
    var price = $(this).val();
    var commission = price*0.1;
    var profits = price*0.9;

    if(price < 300 || price == "" || price > 9999999){
      $('.commission__right').text("-");
      $('.profits__right').text("-");
    }
    else{
      $('.commission__right').text(new Intl.NumberFormat('ja-JP',{style: 'currency', currency: 'JPY'}).format(commission));
      $('.profits__right').text(new Intl.NumberFormat('ja-JP',{style: 'currency', currency: 'JPY'}).format(profits));
    }

  })
}); 