<div class="news-page__col">
  <article class="news-block__item">
    [[+tv.news_img_thumb:contains=`.svg`:then=`
    <a class="news-block__img-wrapper" href="[[+uri]]">
      <img src="[[+tv.news_img_thumb]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="387" height="216">
    </a>
    `:else=`
    <a class="news-block__img-wrapper" href="[[+uri]]">
      <picture>
        <source srcset="[[+tv.news_img_thumb:phpthumbon=`w=590&h=330&q=85`]]" media="(min-width: 1280px)">
        <source srcset="[[+tv.news_img_thumb:phpthumbon=`w=590&h=330&q=80`]]" media="(min-width: 768px)">
        <img src="[[+tv.news_img_thumb:phpthumbon=`w=480&h=268&q=80`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="387" height="216">
      </picture>
    </a>
    `
    ]]
    <div class="news-block__content">
      <h3 class="h5  news-block__title">[[+longtitle:default=`[[+pagetitle]]`]]</h3>
    </div>
    <a href="[[+uri]]" class="news-block__link">[[$langs? &uk=`Детальніше`]]</a>
  </article>
</div>
