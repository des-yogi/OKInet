{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container  news-page  service-block  service-block--page">
      <h1 class="h1  h1--banner">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
      <div class="row">
        [[pdoResources?
        &parents=`[[*id]]`
        &depth=`1`
        &tpl=`@FILE chunks/service_block_item.tpl`
        &includeTVs=`service_img_thumb,service_img_article`
        ]]
      </div>
    </div>
  </main>
{/block}
