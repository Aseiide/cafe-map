function initMap(){
  geocoder = new google.maps.Geocoder();
  // 位置情報を取得
  navigator.geolocation.getCurrentPosition(function (position) {
    // LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

    //緯度経度を定義
    const lat = document.getElementById("lat").dataset.lat
    const lng = document.getElementById("lng").dataset.lng
    const Latlng = {lat: parseFloat(lat), lng: parseFloat(lng)} 
    // 取得した位置情報を中心に表示
    map = new google.maps.Map(document.getElementById('map'), {
      center: Latlng,
      zoom: 15
    });
    new google.maps.Marker({
      position: Latlng,
      map,
      title: "Hello World!",
    });
  });
}
window.onload = function() {
  initMap();
}
