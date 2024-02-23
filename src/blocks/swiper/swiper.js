var mainSwiper = new Swiper('.main-slider', {
    speed: 400,
    slidesPerView: 1,
    spaceBetween: 20,
    centeredSlides: true,
    grabCursor: true,
    loop: true,
    breakpointsInverse: true, // when window width is >= 320px
    autoplay: {
      delay: 4500,
      disableOnInteraction: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true,
    },
    breakpoints: {
      1280: {
        slidesPerView: 1,
        spaceBetween: 20,
      }
    }
});

var newSwiper = new Swiper('.news-block__container', {
    speed: 400,
    slidesPerView: 3,
    spaceBetween: 20,
    centeredSlides: false,
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
    breakpointsInverse: true, // when window width is >= 320px
    breakpoints: {
      320: {
        slidesPerView: 1,
        spaceBetween: 10,
      },
      480: {
        slidesPerView: 1,
        spaceBetween: 10,
      },
      768: {
        slidesPerView: 2,
        spaceBetween: 20,
      },
      1280: {
        slidesPerView: 3,
        spaceBetween: 20,
      }
    }
});
