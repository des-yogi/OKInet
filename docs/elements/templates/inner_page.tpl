{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  action-single-page" role="main">
    <article class="action-single-page__article">
      <div class="container action-single-page__header">
        <h1 class="action-single-page__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
      </div>
      <div class="container  action-single-page__container">
        <div class="row">
          <div class="col">
            <section class="action-single-page__content">
              [[*news_img_article:contains=`.svg`:then=`
              <div class="action-single-page__img-wrapper">
                <img src="[[*news_img_article]]" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="1005" height="420">
              </div>
              `:else=`
              <div class="action-single-page__img-wrapper">
                <picture>
                  <source srcset="[[*news_img_article:phpthumbon=`w=794&h=330&q=90`]]" media="(min-width: 1280px)">
                  <source srcset="[[*news_img_article:phpthumbon=`w=1005&h=420&q=85`]]" media="(min-width: 768px)">
                  <img src="[[*news_img_article:phpthumbon=`w=480&h=268&q=80`]]" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="794" height="330">
                </picture>
              </div>
              `
              ]]
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
