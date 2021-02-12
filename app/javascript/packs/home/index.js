function initMap(){
  geocoder = new google.maps.Geocoder();
  // 位置情報を取得
  navigator.geolocation.getCurrentPosition(function (position) {
    LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

    // 取得した位置情報を中心に表示
    map = new google.maps.Map(document.getElementById('map'), {
      center: LatLng,
      zoom: 14
    });

    //緯度経度を定義
    const latitude = parseFloat(document.getElementById('latitude').textContent);
    const longitude = parseFloat(document.getElementById('longitude').textContent);
    //取得した緯度経度にピンを立てる
    const marker = new google.maps.Marker({
      position:{lat: latitude, lng: longitude},
      map: map,
    });
  });
}
window.onload = function() {
  initMap();
}
