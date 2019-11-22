{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <h1 class="visually-hidden">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
    <div class="container  container--slider">
      <div class="row  row--slider">
        <div class="slider-col">
          <div class="main-slider  swiper-container">
            <div class="swiper-wrapper">
              [[!getImageList?
              &tvname=`main_slider`
              &tpl=`main_slider_tpl`
              &docid=`[[*id]]`
              &limit=`9`
              ]]
            </div>
          </div>
          <div class="main-slider__control-wrapper">
            <div class="main-slider__btn  main-slider__btn--prev  swiper-button-prev" tabindex="0" role="button" area-label="[[$langs? &uk=`Попередній слайд`]]"></div>
            <div class="main-slider__pagination swiper-pagination"></div>
            <div class="main-slider__btn  main-slider__btn--next  swiper-button-next" tabindex="0" role="button" area-label="[[$langs? &uk=`Наступний слайд`]]"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="container  rate-block">
      <h2 class="h2  h2--banner">[[#9.longtitle:ne=``:then=`[[#9.longtitle]]`:else=`[[#9.pagetitle]]`]]</h2>
      <div class="row">
        [[!getImageList?
        &tvname=`home_rates`
        &tpl=`home_rates_tpl`
        &docid=`19`
        &limit=`9`
        ]]
      </div>
    </div>
    <div class="container  service-block">
      <h2 class="h2  h2--banner">[[#8.longtitle:ne=``:then=`[[#8.longtitle]]`:else=`[[#8.pagetitle]]`]]</h2>
      <div class="row">
        [[pdoResources?
        &parents=`8`
        &depth=`1`
        &tpl=`@FILE chunks/service_block_item.tpl`
        &includeTVs=`service_img_thumb,service_img_article`
        ]]
      </div>
    </div>
    <div class="container  single-text-block">
      <div class="row">
        <div class="col">
          <div class="single-text-block__content">
            [[*home_anounce]]
          </div>
        </div>
      </div>
    </div>
    <!-- Слайдер новостей -->
    <div class="container  news-block">
      <h2 class="h2  h2--banner">[[#6.longtitle:ne=``:then=`[[#6.longtitle]]`:else=`[[#6.pagetitle]]`]]</h2>
      <div class="news-block__container  swiper-container  swiper-container-horizontal">
        <div class="swiper-wrapper">
          [[pdoResources?
          &parents=`6`
          &depth=`1`
          &tpl=`@FILE chunks/news_block_item.tpl`
          &includeTVs=`news_img_thumb,news_img_article`
          ]]
        </div>
        <div class="main-slider__control-wrapper  news-block__control-wrapper">
          <div class="main-slider__btn  news-block__btn  main-slider__btn--prev  news-block__btn--prev  swiper-button-prev" tabindex="0" role="button" area-label="[[$langs? &uk=`Попередня новина`]]"></div>
          <a class="news-block__all-links" href="[[~6]]"><span>[[$langs? &uk=`Всі новини`]]</span></a>
          <div class="main-slider__btn  news-block__btn  main-slider__btn--next  news-block__btn--next  swiper-button-next" tabindex="0" role="button" area-label="[[$langs? &uk=`Наступна новина`]]"></div>
        </div>
      </div>
    </div>
    <div class="container  container--map">
      <div class="row">
        <div class="coll-map">
          <section class="map-block">
            <h2 class="h2  h2--banner">[[#12.longtitle:ne=``:then=`[[#12.longtitle]]`:else=`[[#12.pagetitle]]`]]</h2>
            <div class="map-block__options">
              <span class="map-block__options-item">
                <img src="assets/img/address-active.svg" alt="[[$langs? &uk=`Підключення доступно`]]" width="32" height="32"> <span>[[$langs? &uk=`Підключення доступно`]]</span>
              </span>
              <span class="map-block__options-item">
                <img src="assets/img/address-estimated.svg" alt="[[$langs? &uk=`Йде будівництво мережі`]]" width="32" height="32"> <span>[[$langs? &uk=`Йде будівництво мережі`]]</span>
              </span>
            </div>
            <div class="map-block__map" id="map-main" title="[[$langs? &uk=`Карта покриття`]]"></div>
          </section>
        </div>
      </div>
    </div>
  </main>
{/block}

{block 'add_js'}
  {include 'file:chunks/coverage_script.tpl'}
{/block}
