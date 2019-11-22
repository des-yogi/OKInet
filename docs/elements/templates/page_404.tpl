{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--page-404" role="main">
    <div class="container  page-404">
      <div class="row">
        <div class="page-404__col">
          <div class="page-404__text">
            <h1 class="page-404__title">Сторінка не знайдена... <span>або ніколи не існувала :)</span></h1>
            <a class="page-404__back-link" href="/">Повернутися на головну</a>
          </div>
        </div>
        <div class="page-404__col-img">
          <div class="page-404__img-wrapper">
            <img class="page-404__img" src="assets/img/page-404-img.svg" alt="Сторінка не знайдена..." width="793" height="518">
          </div>
        </div>
      </div>
    </div>
  </main>
{/block}
