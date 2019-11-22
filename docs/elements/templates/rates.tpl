{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--rates" role="main">
    <div class="container  rate-block  rate-block--rates-page">
      <h2 class="h2  h2--banner">[[*longtitle:default=`[[*pagetitle]]`]]</h2>
      <div class="row">
        <div class="rate-block__col-switcher">
          <a class="h3  rate-block__rates-switch  active">[[#19.longtitle:ne=``:then=`[[#19.longtitle]]`:else=`[[#19.pagetitle]]`]]</a>
          <a href="[[~20]]" class="h3  rate-block__rates-switch">[[#20.longtitle:ne=``:then=`[[#20.longtitle]]`:else=`[[#20.pagetitle]]`]]</a>
        </div>
      </div>
      <div class="row">
        [[!getImageList?
        &tvname=`home_rates`
        &tpl=`home_rates_tpl`
        &docid=`19`
        &limit=`9`
        ]]
      </div>
    </div>
  </main>
{/block}
