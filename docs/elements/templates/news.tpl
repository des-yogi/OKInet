{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container  news-page">
      <h1 class="h1  h1--banner">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
      <div class="row">
        [[!pdoPage@sitePagination?
        &element=`pdoResources`
        &parents=`[[*id]]`
        &limit=`4`
        &pageLimit=`5`
        &tpl=`@FILE chunks/news_page_item.tpl`
        &includeTVs=`news_img_thumb,news_img_article`
        ]]
      </div>
      [[+page.nav]]
    </div>
  </main>
{/block}
