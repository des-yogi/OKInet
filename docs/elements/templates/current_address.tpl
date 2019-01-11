{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  action-single-page" role="main">
    <article class="action-single-page__article  home-single-page">
      <div class="container action-single-page__header">
        <h1 class="action-single-page__title">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
      </div>
      <div class="container  action-single-page__container">
        <div class="row">
          <div class="col">
            <section class="action-single-page__content">
              <div class="action-single-page__text">
                [[*content]]
                <div class="row">
                  <div class="form-col">
                    <form id="page-request-form" class="form" action="" method="" aria-label="[[$langs? &uk=`Заявка на підключення`]]">
                      <h2>[[$langs? &uk=`Заявка на підключення`]]</h2>
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
                        <button id="page-submit-form" class="news-block__link  form__submit" type="submit">[[$langs? &uk=`Надіслати`]]</button>
                      </div>
                      <div class="form__controls-wrapper  form__controls-wrapper--checkbox">
                        <input id="page-agreement" class="form__checkbox" type="checkbox" checked>
                        <label class="form__agreement-lbl" for="page-agreement" tabindex="0">[[$langs? &uk=`Згоден на обробку персональних даних`]]</label>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
