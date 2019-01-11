[[!pdoResources?
&parents=`12`
&limit=`0`
&select=`{ "modResource":"uri,id,pagetitle,gmap" }`
&toPlaceholder=`objMap`
&tvPrefix=``
&return=`json`
&includeTVs=`gmap,coverage_status`
&hideContainers=`1`
]]

{ignore}
  <script>
    function initMap() {

      var coverageMap = [[+objMap]];
      var okinetLat = [[++company_lat]];
      var okinetLng = [[++company_lng]];
      // Стиль карты
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

      var imageConnected = 'assets/img/address-active.svg';
      var imageUnderConstruction = 'assets/img/address-estimated.svg';

      var mainMap = new google.maps.Map(document.getElementById('map-main'), {
        center: { lat: parseFloat(okinetLat), lng: parseFloat(okinetLng) },
        zoom: 13,
        mapTypeControlOptions: {
          mapTypeIds: ['roadmap', 'satellite']
        }
      });

      var markers = coverageMap.map(function (address, i, arr) {
        var pinImg = (address.coverage_status === '1') ? imageConnected : imageUnderConstruction;
        var contentString = '' + address.pagetitle;
        var uri = address.uri;
        var status = (address.coverage_status === '1') ? '[[$langs? &uk=`Підключен`]]' : '[[$langs? &uk=`Йде будівництво`]]';
        //console.log(uri);
        var currentPosition = function (currentAddress) {
          return {
            lat: parseFloat(currentAddress.gmap.latitude),
            lng: parseFloat(currentAddress.gmap.longitude)
          }
        };

        var marker = new google.maps.Marker({
          position: currentPosition(address),
          map: mainMap,
          icon: pinImg,
          title: contentString,
          status: status,
          link: uri
        });
        console.log(marker);
        return marker;
      });
      //console.log(markers);

      /*var marker2 = new google.maps.Marker({
        position: mainMap.center,
        map: mainMap,
        icon: image,
        animation: google.maps.Animation.DROP
      });*/

      mainMap.mapTypes.set('styled_map', styledMapType);
      mainMap.setMapTypeId('styled_map');

      for (var i = 0; i < markers.length; i++) {
        markers[i].addListener('click', function () {
          var infowindow = new google.maps.InfoWindow({
            content: '<h4>' + this.title + '</h4><div>' + this.status + '</div><a href="' + this.link + '" title="" style="display:block;padding:8px 10px;margin:10px 0;font-size:1.2em;font-weight:500;">Детальніше</a><button class="news-block__link  form__submit" type="button" data-toggle="modal" data-target="#request-modal" style="font-size:1.2em;padding:8px 10px;">[[$langs? &uk=`Підключитись`]]</button>'
          });
          infowindow.open(mainMap, this);
        });
      }

      var markerCluster = new MarkerClusterer(mainMap, markers, {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
    }
  </script>
{/ignore}

<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALcSnVjudc786H0NkYSLw3vJWoKj1BEa0&language=uk&region=UA&callback=initMap">
</script>
