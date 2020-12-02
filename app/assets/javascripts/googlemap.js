function initMap(){ 
    map = new google.maps.Map(document.getElementById('map'), { 
      center: {lat: gon.lat, lng: gon.lng}, 
      zoom: 7, 
    });

    marker = new google.maps.Marker({ 
      position:  {lat: gon.lat, lng: gon.lng}, 
      map: map 
    });
}