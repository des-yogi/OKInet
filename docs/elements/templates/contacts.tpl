{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container  contacts-page">
      <h1 class="h1  h1--banner">[[*pagetitle:default=`[[*longtitle]]`]]</h1>
      <div class="row">
        <div class="col-text">
          <section class="page-footer__contacts">
            <ul class="page-footer__contacts-list">
              <li class="page-footer__contacts-item">
                <span class="page-footer__contacts-link  page-footer__contacts-link--address" title="[[$langs? &uk=`Адреса компанії OKinet`]]">
                  <span></span>[[++company_address]]</span>
              </li>
              <li class="page-footer__contacts-item">
                <span class="page-footer__contacts-link  page-footer__contacts-link--time" title="[[$langs? &uk=`Робочий час компанії OKinet`]]">
                  <span></span>[[++company_worktime]]</span>
              </li>
              <li class="page-footer__contacts-item">
                <a class="page-footer__contacts-link  page-footer__contacts-link--tel" href="tel:+[[++company_tel_1]]" title="[[$langs? &uk=`Телефон компанії OKinet міський`]]">
                  <span></span>[[++company_tel_1:phone_format]]</a>
                <a class="page-footer__contacts-link" href="tel:+[[++company_tel_2]]" title="[[$langs? &uk=`Телефон компанії OKinet мобільний`]]">
                  <span style="background:none;"></span>[[++company_tel_2:phone_format]]</a>
              </li>
              <li class="page-footer__contacts-item">
                <a class="page-footer__contacts-link  page-footer__contacts-link--mail" href="mailto:[[++company_email]]" title="[[$langs? &uk=`Email компанії OKinet`]]">
                  <span></span>[[++company_email]]</a>
              </li>
              <li class="page-footer__contacts-item  page-footer__contacts-item--social">
                <a class="page-footer__social-link  page-footer__social-link--fb" href="[[++social_fb]]" title="[[$langs? &uk=`Cторінка компанії Okinet на Facebook`]]">
                  <span></span> Facebook
                </a>
                <a class="page-footer__social-link  page-footer__social-link--tg" href="tg://resolve?domain=[[++social_tg]]" title="[[$langs? &uk=`Канал компанії Okinet в Telegram`]]">
                  <span></span> Telegram
                </a>
                {if is_mobile()}
                  <a class="page-footer__social-link  page-footer__social-link--vb" href="viber://add?number=+[[++social_vib]]" title="[[$langs? &uk=`Контакт компанії Okinet в Viber`]]"> <!-- Для мобильных -->
                    <span></span> Viber
                  </a>
                {else}
                  <a class="page-footer__social-link  page-footer__social-link--vb" href="viber://chat?number=+[[++social_vib]]" title="[[$langs? &uk=`Контакт компанії Okinet в Viber`]]">
                    <span></span> Viber
                  </a>
                {/if}
              </li>
            </ul>
          </section>
        </div>
        <div class="col-map">
          <section class="map-block">
            <h2 class="visually-hidden">[[$langs? &uk=`Адреса офіса OKinet`]]</h2>
            <div class="map-block__map  map-block__map--contacts" id="contact-map"></div>
          </section>
        </div>
      </div>
    </div>
  </main>
{/block}

{block 'add_js'}

{ignore}
<script>
  var okinet = [[*contactMap]];
  var locationMap;

  function initMap() {
    var styledMapType = new google.maps.StyledMapType(
      [
        {
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#f5f5f5"
            }
          ]
        },
        {
          "elementType": "labels.icon",
          "stylers": [
            {
              "visibility": "off"
            }
          ]
        },
        {
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#616161"
            }
          ]
        },
        {
          "elementType": "labels.text.stroke",
          "stylers": [
            {
              "color": "#f5f5f5"
            }
          ]
        },
        {
          "featureType": "administrative.land_parcel",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#bdbdbd"
            }
          ]
        },
        {
          "featureType": "poi",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#eeeeee"
            }
          ]
        },
        {
          "featureType": "poi",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#757575"
            }
          ]
        },
        {
          "featureType": "poi.park",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#e5e5e5"
            }
          ]
        },
        {
          "featureType": "poi.park",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#9e9e9e"
            }
          ]
        },
        {
          "featureType": "road",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#ffffff"
            }
          ]
        },
        {
          "featureType": "road.arterial",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#757575"
            }
          ]
        },
        {
          "featureType": "road.highway",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#dadada"
            }
          ]
        },
        {
          "featureType": "road.highway",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#616161"
            }
          ]
        },
        {
          "featureType": "road.local",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#9e9e9e"
            }
          ]
        },
        {
          "featureType": "transit.line",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#e5e5e5"
            }
          ]
        },
        {
          "featureType": "transit.station",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#eeeeee"
            }
          ]
        },
        {
          "featureType": "water",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#c9c9c9"
            }
          ]
        },
        {
          "featureType": "water",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#9e9e9e"
            }
          ]
        }
      ],
      {name: 'Styled Map'}
    );

    locationMap = new google.maps.Map(document.getElementById('contact-map'), {
      center: { lat: parseFloat(okinet.latitude), lng: parseFloat(okinet.longitude) },
      zoom: 17,
      mapTypeControlOptions: {
        mapTypeIds: ['roadmap', 'satellite']
      }
    });

    var image = 'assets/img/pin-map-icon.svg';
    var contentString = '<div style="color:gray;"><h3 style="margin:5px 0;color:#AF2A32">OKinet</h3><p style="font-size:1.1em;"> г. ' + okinet.city + ', <br> ул. ' + okinet.street + ' ' + okinet.housenumber + ', <p style="font-size:1.1em;">Пн. - Пт. с 09:00 до 21:00</p></p></div>';
    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });

    var marker = new google.maps.Marker({
      position: locationMap.center,
      map: locationMap,
      icon: image,
      animation: google.maps.Animation.DROP
    });

    locationMap.mapTypes.set('styled_map', styledMapType);
    locationMap.setMapTypeId('styled_map');

    marker.addListener('click', function () {
      infowindow.open(locationMap, marker);
    });
  }

 </script>
{/ignore}

  <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALcSnVjudc786H0NkYSLw3vJWoKj1BEa0&language=uk&region=UA&callback=initMap">
  </script>
{/block}
