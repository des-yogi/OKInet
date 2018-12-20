$(document).ready(function(){
  $('.menu-toggle').on('click', function() {
    $('.menu-toggle').toggleClass('active').attr('area-pressed', 'true');
  });
  $('.menu-toggle').on('keypress', function() {
    $('.menu-toggle').toggleClass('active').attr('area-pressed', 'true');
  });
});
