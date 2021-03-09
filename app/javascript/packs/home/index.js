function initMap(){
  geocoder = new google.maps.Geocoder();
  // 位置情報を取得
  navigator.geolocation.getCurrentPosition(function (position) {
    LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
    map = new google.maps.Map(document.getElementById('map'), {
      center: LatLng,
      zoom: 15
    });

    //緯度経度を定義
    const lat = document.getElementById("lat").dataset.lat
    const lng = document.getElementById("lng").dataset.lng
    const Store = {lat: parseFloat(lat), lng: parseFloat(lng)} 

    new google.maps.Marker({
      position: Store,
      map,
      title: "Hello World!",
    });
  });
}
window.onload = function() {
  initMap();
}
