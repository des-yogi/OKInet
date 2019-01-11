{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container  news-page  customers">
      <h1 class="h1  h1--banner">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
      <div class="row">
        <div class="col  col--customers-terminal">
          <article class="customers__terminal">
            <h2>[[$langs? &uk=`Оплата послуг в терміналах`]]</h2>
            <div class="row">
              <div class="col customers__col-inner">
                <a class="customers__link" href="" title="[[$langs? &uk=`Оплата послуг в терміналах`]] City24">
                  <img src="assets/img/city24-logo.png" alt="city24" width="150" height="150">
                </a>
              </div>
              <div class="col customers__col-inner">
                <a class="customers__link" href="" title="[[$langs? &uk=`Оплата послуг в терміналах`]] TYME">
                  <img src="assets/img/tyme-logo.svg" alt="Tyme" width="117" height="158">
                </a>
              </div>
              <div class="col customers__col-inner  customers__col-inner--full">
                <a class="customers__link" href="" title="[[$langs? &uk=`Оплата послуг в терміналах`]] 24 Non Stop">
                  <img src="assets/img/24nonstop.png" alt="24 nonstop" width="187" height="82">
                </a>
              </div>
            </div>
          </article>
        </div>
        <div class="col  col--customers-online">
          <article class="customers__online">
            <h2>[[$langs? &uk=`Оплата послуг онлайн`]]</h2>
            <div class="row">
              <div class="col customers__col-inner">
                <a class="customers__link" href="" title="[[$langs? &uk=`Оплата послуг онлайн`]] VISA">
                  <img src="assets/img/visa-logo.svg" alt="VISA" width="241" height="78">
                </a>
              </div>
              <div class="col customers__col-inner">
                <a class="customers__link" href="" title="[[$langs? &uk=`Оплата послуг онлайн`]] Mastercard">
                  <img src="assets/img/mastercard-logo.svg" alt="Mastercard" width="192" height="150">
                </a>
              </div>
              <div class="col customers__col-inner">
                <a class="customers__link  customers__link--stretched" href="" title="[[$langs? &uk=`Оплата послуг онлайн`]] Liqpay">
                  <img src="assets/img/liqpay-p-logo.svg" alt="Liqpay" width="241" height="50">
                </a>
              </div>
              <div class="col customers__col-inner">
                <a class="customers__link  customers__link--stretched" href="" title="[[$langs? &uk=`Оплата послуг онлайн`]] Приват24">
                  <img src="assets/img/privat24-logo.svg" alt="Приват24" width="226" height="49">
                </a>
              </div>
            </div>
          </article>
        </div>
        <div class="col  col--customers-text">
          <article class="customers__bank-details">
            <h2>[[$langs? &uk=`Публічний договір компанії ОКинет`]]</h2>
            <p>[[$langs? &uk=`Про надання послуг доступу до мережі Інтернет та додаткових послуг на умовах публічної оферти.`]]</p>
            <p><a target="_blank" rel="nofollow noopener"><strong>[[$langs? &uk=`Завантажити`]]</strong></a></p>
          </article>
        </div>
        <div class="col  col--customers-text">
          <h2 class="visually-hidden">[[$langs? &uk=`Банківські реквізити компанії ОКинет для оплати через відділення банків`]]</h2>
          <p class="h2">
            <a target="_blank" rel="nofollow noopener">[[$langs? &uk=`Реквізити для оплати через відділення банків`]]</a>
          </p>
          <p class="h4">
            <a target="_blank" rel="nofollow noopener">[[$langs? &uk=`ОТТ`]]</a>
          </p>
        </div>
      </div>
    </div>
  </main>
{/block}
