{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--rates" role="main">
    <div class="container  rate-block  rate-block--rates-page">
      <h2 class="h2  h2--banner">[[*parent:getThisField=`longtitle`]]</h2>
      <div class="row">
        <div class="rate-block__col-switcher">
          <a href="[[~[[*parent]]]]" class="h3  rate-block__rates-switch">[[#19.longtitle:ne=``:then=`[[#19.longtitle]]`:else=`[[#19.pagetitle]]`]]</a>
          <a class="h3  rate-block__rates-switch  active">[[#20.longtitle:ne=``:then=`[[#20.longtitle]]`:else=`[[#20.pagetitle]]`]]</a>
        </div>
      </div>
      <div class="row">
        [[!getImageList?
        &tvname=`business_rates`
        &tpl=`business_rates_tpl`
        &docid=`20`
        &limit=`9`
        ]]
        <div class="col col--info-text">
          <div class="rate-block__info-text">
            [[*introtext]]
          </div>
        </div>
      </div>
    </div>

    <section class="container  partners-block">
      <h2 class="h2  h2--banner">[[$langs? &uk=`Нам довіряють:`]]</h2>
      <ul class="row  partners-block__list">
        [[!getImageList?
        &tvname=`clients`
        &tpl=`clients_tpl`
        &docid=`[[*id]]`
        &limit=`99`
        ]]
      </ul>
    </section>
  </main>
{/block}
