{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container  vacancy-page">
      <h1 class="h1  h1--banner">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
      <div class="row">
        <div class="col">
          <article class="vacancy-page__content">
            <h2 class="visually-hidden">[[*description]]</h2>
            <section class="vacancy-page__intro">
              [[*introtext]]
            </section>
            <section class="vacancy-page__employees">
              <div class="accordion-container  vacancy-page__accordion">
                [[!getImageList?
                &tvname=`vacancy`
                &tpl=`@CODE:
                  <div class="ac  vacancy-page__acc-item">
                    <h3 class="ac-q  h2  vacancy-page__title" tabindex="0">[[+vacancy_name]]</h3>
                    <div class="ac-a  vacancy-page__acc-content">
                      <p>[[+vacancy_descr]]</p>
                    </div>
                  </div>
                `
                &docid=`[[*id]]`
                &limit=`20`
                ]]
              </div>
            </section>
          </article>
        </div>
      </div>
    </div>
  </main>
{/block}
