$(document).on('turbolinks:load', function(){
  $('#slide').slick({
    autoplay: true,
    autoplaySpeed: 5000,
    accessibility: true,
    dots: true
  });


  var slider = function() {
  var $slider = $('#product-slide');
  if ($slider.length < 1) { return; }
  
  var $thumbs = $('.thumbnail-item');
  
  $slider.slick({
    autoplay: true,
    arrows: false
  });
  
  $thumbs.on('click', function(e){
    e.preventDefault();
    var index = $thumbs.index(this);
    $slider.slick('slickGoTo', index, true);
  });
  
  $slider.on('beforeChange', function(event, slick, currentSlide, nextSlide){
    var currentClass = 'current';
    $thumbs.removeClass(currentClass)
      .eq(nextSlide).addClass(currentClass);
  });
};

slider();
});
