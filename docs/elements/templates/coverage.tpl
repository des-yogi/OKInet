{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container   news-page  coverage">
      <h1 class="h1  h1--banner">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
      <div class="row">
        <div class="coll-map">
          <section class="map-block">
            <div class="map-block__options">
               <span class="map-block__options-item">
                 <img src="assets/img/address-active.svg" alt="[[$langs? &uk=`Підключення доступно`]]" width="32" height="32"> <span>[[$langs? &uk=`Підключення доступно`]]</span>
               </span>
              <span class="map-block__options-item">
                <img src="assets/img/address-estimated.svg" alt="[[$langs? &uk=`Йде будівництво мережі`]]" width="32" height="32"> <span>[[$langs? &uk=`Йде будівництво мережі`]]</span>
              </span>
            </div>
            <div class="map-block__map" id="map-main" title="[[$langs? &uk=`Карта покриття`]]"></div>
          </section>
        </div>
      </div>
    </div>
  </main>
{/block}

{block 'add_js'}
  {include 'file:chunks/coverage_script.tpl'}
{/block}
