{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  action-single-page  services-single-page" role="main">
    <article class="action-single-page__article">
      <div class="container action-single-page__header">
        <h1 class="action-single-page__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
      </div>
      <div class="container  action-single-page__container">
        <div class="row">
          <div class="col-service">
            <section class="action-single-page__content">
              <div class="action-single-page__img-wrapper">
                <picture>
                  <source srcset="[[*service_img_article:phpthumbon=`w=996&h=400&q=85`]]" media="(min-width: 768px)">
                  <img src="[[*service_img_article:phpthumbon=`w=604&h=243&q=75`]]" alt="Картинка к статье [[*pagetitle]]" width="604" height="243">
                </picture>
              </div>
              <div class="action-single-page__text">
                [[*content]]
              </div>
            </section>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
