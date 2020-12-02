marker = []; // マーカーを複数表示させたいので、配列化
infoWindow = []; // 吹き出しを複数表示させたいので、配列化
markerData = gon.creatures_infos; // コントローラーで定義したインスタンス変数を変数に代入

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
    marker = []; // マーカーを複数表示させたいので、配列化
    infoWindow = []; // 吹き出しを複数表示させたいので、配列化
    markerData = gon.creatures_infos; // コントローラーで定義したインスタンス変数を変数に代入
   
    map = new google.maps.Map(document.getElementById('maps'), {
      center: { lat: 35.6585, lng: 139.7486 }, // 東京タワーを中心に表示させている
      zoom: 5,
    });

    // 繰り返し処理でマーカーと吹き出しを複数表示させる
    for (var i = 0; i < markerData.length; i++) {
      let id = markerData[i]['id']

      // 各地点の緯度経度を算出
      markerLatLng = new google.maps.LatLng({
        lat: markerData[i]['latitude'],
        lng: markerData[i]['longitude']
      });

      // 各地点のマーカーを作成
      marker[i] = new google.maps.Marker({
        position: markerLatLng,
        map: map
      });

      // 各地点の吹き出しを作成
      infoWindow[i] = new google.maps.InfoWindow({
        // 吹き出しの内容
        content: `<a href='/creatures_infos/${ id }'>${ markerData[i]['content'] }</a>`
      });

      // マーカーにクリックイベントを追加
      markerEvent(i);
    }
  }

  // マーカーをクリックしたら吹き出しを表示
  function markerEvent(i) {
    marker[i].addListener('click', function () {
      infoWindow[i].open(map, marker[i]);
    });
  }
}