<!DOCTYPE html>
<html class="no-js  page" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <base href="[[++site_url]]">
  {block 'title'}
    <title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]©</title>
  {/block}
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="MobileOptimized" content="320">
  <!-- <meta property="og:url"      content="https://www.your-domain.com/your-page.html" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="Your Website Title" />
  <meta property="og:description"   content="Your description" />
  <meta property="og:image"         content="https://www.your-domain.com/path/image.jpg" /> -->
  <meta name="keywords" content="[[+seoPro.keywords]]">
  <meta name="description" content="[[*description:notempty=`[[*description]]`]]">
  <meta name="robots" content="[[+seoTab.robotsTag]]">
  <link href="[[!modxMinify?&group=`styles`]]" rel="stylesheet" media="screen">
  <script>
    // Picture element HTML5 shiv
    document.createElement("picture");
  </script>
  <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
  <link rel="manifest" href="assets/img/site.webmanifest">
  <link rel="mask-icon" href="assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">
</head>

<body>
<div class="page__inner">
  <div class="page__content">
    <header class="page-header" role="banner">
      <div class="page-header__top">
        <a [[*id:is=`1`:then=``:else=`href="/"`]] class="logo  logo--header" title="[[$langs? &uk=`OKinet© інтернет-провайдер`]]">
          <img src="[[++company_logo_head]]" alt="[[$langs? &uk=`OKinet логотип`]]" width="105" height="50">
        </a>
        <a class="page-header__user" href="//stats.okinet.com.ua/" role="button" title="[[$langs? &uk=`Особистий кабінет`]]">
          <svg width="28" height="30" role="img">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#user-icon"/>
          </svg>
          <span class="page-header__user-label" >[[$langs? &uk=`Особистий кабінет`]]</span>
        </a>
        <div class="menu-toggle" tabindex="0" role="button" aria-pressed="false" title="[[$langs? &uk=`Відкрити меню`]]">
          <div class="hamburger">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <div class="cross">
            <span></span>
            <span></span>
          </div>
        </div>
        <section class="page-header__contacts">
          <div class="page-header__contacts-tel">
            <a class="page-header__tel-link" href="tel:+[[++company_tel_1]]">[[++company_tel_1:phone_format]]</a>
            <a class="page-header__tel-link" href="tel:+[[++company_tel_2]]">[[++company_tel_2:phone_format]]</a>
          </div>
          <a class="page-header__contacts-callback" title="[[$langs? &uk=`Замовити дзвінок`]]">
            <svg class="page-header__callback-icon" width="24" height="24" role="img">
              <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#tel-icon"/>
            </svg>
            <span class="h4  page-header__callback-text">[[$langs? &uk=`Зателефонуйте мені`]]</span>
          </a>
          <div class="callme-block" style="display:none;">
            <button id="callme-block-close" type="button" class="modal__close-btn" aria-label="[[$langs? &uk=`Закрити`]]">
              <span class="close"><span></span></span>
            </button>
            <form id="callback-form" class="form" action="" method="">
              <h2>[[$langs? &uk=`Введіть ваш номер`]]</h2>
              <div class="form__controls-wrapper">
                <input class="form__control" type="tel" name="tel" placeholder="Номер телефона" aria-label="[[$langs? &uk=`Ваш номер телефону`]]" required>
                <span class="form__error"></span>
              </div>
              <div class="form__controls-wrapper  form__controls-wrapper--submit-btn">
                <button id="submit-form" class="news-block__link  form__submit" type="submit">[[$langs? &uk=`Надіслати`]]</button>
              </div>
            </form>
          </div>
        </section>
        <button id="call-now-header" class="call-now-btn  call-now-btn--header" type="button" data-toggle="modal" data-target="#request-modal">[[$langs? &uk=`Підключитись`]]</button>
      </div>
      <div class="page-header__navigation">
        <nav id="main-nav" class="main-nav">
          [[pdoMenu?
          &parents=`0`
          &level=`1`
          &tplOuter=`@INLINE <ul class="main-nav__list">[[+wrapper]]</ul>`
          &tpl=`@INLINE <li class="main-nav__item"><a class="main-nav__link" href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
          &tplHere=`@INLINE <li class="main-nav__item  active"><a class="main-nav__link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
          ]]
        </nav>
        <!-- раскомментировать для настройки многоязычности + убрать стиль для main-nav (width:100%)
        <section class="page-header__lang">
          <ul class="lang-switcher">
            <li class="lang-switcher__item">
              <a class="lang-switcher__link" href="">Рус</a>
            </li>
            <li class="lang-switcher__item  active">
              <a class="lang-switcher__link" href="">Укр</a>
            </li>
          </ul>
        </section> -->
      </div>
    </header>

    {block 'main'}

    {/block}

  </div>

  <div class="page__footer-wrapper">
    <footer class="page-footer" role="contentinfo">
      <div class="row">
        <!-- Моб + планшет - контейнер, десктоп - колонка -->
        <section class="page-footer__navigation">
          [[pdoMenu?
          &parents=`0`
          &level=`1`
          &tplOuter=`@INLINE <ul class="page-footer__nav" role="menu">[[+wrapper]]</ul>`
          &tpl=`@INLINE <li class="page-footer__nav-item" role="menuitem"><a class="page-footer__nav-link" href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
          &tplHere=`@INLINE <li class="page-footer__nav-item  active" role="menuitem"><a class="page-footer__nav-link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
          ]]
          <div class="page-footer__logo-wrapper">
            <a [[*id:is=`1`:then=``:else=`href="/"`]] class="logo  logo--footer" title="[[$langs? &uk=`OKinet інтернет-провайдер`]]">
              <img src="assets/img/okinet-logo-white.svg" alt="OKinet logo" width="88" height="42">
            </a>
            <button class="call-now-btn  call-now-btn--footer" type="button" data-toggle="modal" data-target="#request-modal">[[$langs? &uk=`Підключитись`]]</button>
          </div>
        </section>
        <section class="page-footer__contacts">
          <ul class="page-footer__contacts-list">
            <li class="page-footer__contacts-item">
                <span class="page-footer__contacts-link  page-footer__contacts-link--address" title="[[$langs? &uk=`Адреса компанії OKinet`]]">
                  <span></span>[[++company_address]]</span>
            </li>
            <li class="page-footer__contacts-item">
                <span class="page-footer__contacts-link  page-footer__contacts-link--time" title="[[$langs? &uk=`Робочий час компанії OKinet`]]">
                  <span></span>[[++company_worktime]]</span>
            </li>
            <li class="page-footer__contacts-item">
              <a class="page-footer__contacts-link  page-footer__contacts-link--tel" href="tel:+[[++company_tel_1]]" title="[[$langs? &uk=`Телефон компанії OKinet міський`]]">
                <span></span>[[++company_tel_1:phone_format]]</a>
              <a class="page-footer__contacts-link" href="tel:+[[++company_tel_2]]" title="[[$langs? &uk=`Телефон компанії OKinet мобільний`]]">
                <span style="background:none;"></span>[[++company_tel_2:phone_format]]</a>
            </li>
            <li class="page-footer__contacts-item">
              <a class="page-footer__contacts-link  page-footer__contacts-link--mail" href="mailto:[[++company_email]]" title="[[$langs? &uk=`Email компанії OKinet`]]">
                <span></span>[[++company_email]]</a>
            </li>
            <li class="page-footer__contacts-item  page-footer__contacts-item--social">
              <a class="page-footer__social-link  page-footer__social-link--fb" href="[[++social_fb]]" title="[[$langs? &uk=`Cторінка компанії Okinet на Facebook`]]">
                <span></span> Facebook
              </a>
              <a class="page-footer__social-link  page-footer__social-link--tg" href="tg://resolve?domain=[[++social_tg]]" title="[[$langs? &uk=`Канал компанії Okinet в Telegram`]]">
                <span></span> Telegram
              </a>
              {if is_mobile()}
                <a class="page-footer__social-link  page-footer__social-link--vb" href="viber://add?number=+[[++social_vib]]" title="[[$langs? &uk=`Контакт компанії Okinet в Viber`]]"> <!-- Для мобильных -->
                  <span></span> Viber
                </a>
              {else}
                <a class="page-footer__social-link  page-footer__social-link--vb" href="viber://chat?number=+[[++social_vib]]" title="[[$langs? &uk=`Контакт компанії Okinet в Viber`]]">
                  <span></span> Viber
                </a>
              {/if}
            </li>
          </ul>
        </section>
        <section class="copyrights">
          <span class="copyrights__owner">©&thinsp;&thinsp;[[!+currentYear:default=`now`:strtotime:date=`%Y`]]&nbsp;[[$langs? &uk=`Інтернет-провайдер&nbsp;«OKinet». &shy;Всі права захищені.`]]</span>
          <a class="copyrights__developer" href="https://it-doors.com" target="_blank" rel="nofollow noopener" title="[[$langs? &uk=`© IT-Doors Outsourcing — розробник сайту`]]">
            <img src="assets/img/itdoors-logo.svg" alt="IT-Doors Outsourcing logo" width="87" height="32">
          </a>
        </section>
      </div>
    </footer>
  </div>
</div>

<div class="modal  fade  request-modal" id="request-modal" tabindex="-1" role="dialog" aria-labelledby="request-modal-title" aria-hidden="true" aria-modal="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="modal__close-btn" data-dismiss="modal" aria-label="[[$langs? &uk=`Закрити`]]">
          <span class="close"><span></span></span>
        </button>
      </div>
      <div class="modal-body">
        <form id="connection-request-form" class="form" action="" method="">
          <h2 id="request-modal-title">[[$langs? &uk=`Заявка на підключення`]]</h2>
          <div class="form__controls-wrapper">
            <input class="form__control" type="text" name="name" placeholder="[[$langs? &uk=`Ваше ім'я`]]" required>
            <span class="form__error"></span>
          </div>
          <div class="form__controls-wrapper">
            <input class="form__control" type="tel" name="tel" placeholder="[[$langs? &uk=`Ваш телефон`]]" required>
            <span class="form__error"></span>
          </div>
          <div class="form__controls-wrapper">
            <input class="form__control" type="email" name="email" placeholder="[[$langs? &uk=`Ваш Email`]]">
            <span class="form__error"></span>
          </div>
          <div class="form__controls-wrapper">
            <img src="assets/img/recapcha.jpg" alt="re" width="250" height="67">
            <span class="form__error"></span>
          </div>
          <div class="form__controls-wrapper  form__controls-wrapper--submit-btn">
            <button id="submit-form-btn" class="news-block__link  form__submit" type="submit">[[$langs? &uk=`Надіслати`]]</button>
          </div>
          <div class="form__controls-wrapper  form__controls-wrapper--checkbox">
            <input id="agreement" class="form__checkbox" type="checkbox" checked>
            <label class="form__agreement-lbl" for="agreement" tabindex="0">[[$langs? &uk=`Згоден на обробку персональних даних`]]</label>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="[[!modxMinify?&group=`scripts`]]" defer></script>
{block 'add_js'}
{/block}

</body>
</html>
