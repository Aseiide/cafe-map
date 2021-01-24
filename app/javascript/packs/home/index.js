function initMap(){
  geocoder = new google.maps.Geocoder();
  //   const map = new google.maps.Map(document.getElementById('map'),{ 
  //   center: {lat: 40.7828, lng:-73.9653},
  //   zoom: 12, 
  //   }); 
  // marker = new google.maps.Marker({ position: {lat: 40.7828, lng:-73.9653}, map: map }); 

  // 位置情報を取得
  navigator.geolocation.getCurrentPosition(function (position) {
    LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

    // 取得した位置情報を中心に表示
    map = new google.maps.Map(document.getElementById('map'), {
      center: LatLng,
      zoom: 15
    });
  });
}
window.onload = function() {
  initMap();
}
