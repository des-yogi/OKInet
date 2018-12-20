var mainSwiper = new Swiper('.main-slider', {
    speed: 400,
    spaceBetween: 20,
    centeredSlides: true,
    grabCursor: true,
    loop: true,
    /*autoplay: {
      delay: 3500,
      disableOnInteraction: true,
    },*/
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true,
    }
});
