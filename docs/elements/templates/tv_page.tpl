{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container  news-page  tv-page">
      <article class="tv-page__article">
        <h1 class="h1  h1--banner">[[*pagetitle:default=`[[*longtitle]]`]]</h1>

        [[*introtext:notempty=`
          <div class="row">
            <div class="col  col--intro">
              <section class="tv-page__intro">
                [[*introtext]]
              </section>
            </div>
          </div>
        `]]

        <div class="row">
          <div class="col  col--features">
            <section class="tv-page__features">
              <h2 class="visually-hidden">[[$langs? &uk=`Переваги ТБ від OKinet`]]</h2>
              <p class="h2">[[$langs? &uk=`Крім інтерактивного ТБ на всіх пристроях, Ви також отримуєте:`]]</p>
              <ul class="tv-page__features-list">
                [[!getImageList?
                &tvname=`tv_options`
                &tpl=`@CODE: <li>[[+option]]</li>`
                &docid=`[[*id]]`
                &limit=`9`
                ]]
              </ul>
            </section>
          </div>
          <div class="col  col--features-img">
            <div class="tv-page__features-img-wrapper">
              <picture>
                <source srcset="assets/img/tv-features-desktop@1x.jpg" media="(min-width: 1280px)">
                <source srcset="assets/img/tv-features-tablet@1x.jpg" media="(min-width: 768px)">
                <img src="assets/img/tv-features-mobile@1x.jpg" alt="[[$langs? &uk=`Переваги ТБ від OKinet`]]" width="300" height="201">
              </picture>
            </div>
          </div>
        </div>
        <div class="tv-page__rates">
          <div class="row  row--tv-rates">
            <div class="col  col--intro">
              <section class="tv-page__intro">
                <h2>[[$langs? &uk=`Пакети телеканалів і вартість послуги MEGOGO.NET`]]</h2>
                <p>[[*megogo_intro]]</p>
              </section>
            </div>
          </div>
          <div class="row">
            [[!getImageList?
            &tvname=`megogo_rates`
            &tpl=`megogo_rates_tpl`
            &docid=`[[*id]]`
            &limit=`8`
            ]]
          </div>
        </div>
        <section class="tv-page__media">
          <h2 class="visually-hidden">[[$langs? &uk=`Медіа приставка від OKinet`]]</h2>
          <div class="row  row--media">
            <div class="col  col--media">
              <div class="tv-page__media-img-wrapper">
                <picture>
                  <source srcset="assets/img/tv-page-media-desktop@1x.png" media="(min-width: 1280px)">
                  <img src="assets/img/tv-page-media-mobile@1x.png" alt="[[$langs? &uk=`Медіа приставка від OKinet`]]" width="480" height="334">
                </picture>
                <div class="row">
                  <div class="tv-page__media-icons">
                    <img src="assets/img/wifi-icon.svg" alt="Wi-Fi" width="48" height="34">
                    <span class="h4">[[$langs? &uk=`Зв'язок Wi-Fi`]]</span>
                  </div>
                  <div class="tv-page__media-icons">
                    <img src="assets/img/fullhd-icon.svg" alt="FullHD" width="48" height="34">
                    <span class="h4">[[$langs? &uk=`Підтримка FullHD`]]</span>
                  </div>
                  <div class="tv-page__media-icons  tv-page__media-icons--android">
                    <img src="assets/img/android-icon.svg" alt="Android" width="38" height="48">
                    <span class="h4">[[$langs? &uk=`Зручний інтерфейс Android`]]</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="col  col--media-content">
              <div class="tv-page__media-content">
                [[*content]]
              </div>
            </div>
          </div>
        </section>
      </article>
    </div>
  </main>
{/block}
