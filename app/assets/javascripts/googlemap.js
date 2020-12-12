let marker = []; 
let infoWindow = []; 
let markerData = gon.creatures_infos; 

function initMap(){ 
  if(document.getElementById('map')){
    map = new google.maps.Map(document.getElementById('map'), { 
      center: {lat: gon.lat, lng: gon.lng}, 
      zoom: 7, 
    });

    marker = new google.maps.Marker({ 
      position:  {lat: gon.lat, lng: gon.lng}, 
      map: map 
    });
  }else{
    map = new google.maps.Map(document.getElementById('maps'), {
      center: { lat: 35.6585, lng: 139.7486 },
      zoom: 5,
    });

    for (var i = 0; i < markerData.length; i++) {
      let id = markerData[i]['id']

      markerLatLng = new google.maps.LatLng({
        lat: markerData[i]['latitude'],
        lng: markerData[i]['longitude']
      });

      marker[i] = new google.maps.Marker({
        position: markerLatLng,
        map: map
      });

      infoWindow[i] = new google.maps.InfoWindow({
        content: `<a href='/creatures_infos/${ id }'>${ markerData[i]['content'] }</a>`
      });

      markerEvent(i);
    }
  }

  function markerEvent(i) {
    marker[i].addListener('click', function () {
      infoWindow[i].open(map, marker[i]);
    });
  }
}