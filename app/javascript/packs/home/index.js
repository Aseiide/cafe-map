let marker = [];
let markerData = JSON.parse(document.querySelector("#marker-data").dataset.position);

function initMap() {
  // 位置情報を取得して中心に表示
  navigator.geolocation.getCurrentPosition(function(position) {
    LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
    map = new google.maps.Map(document.getElementById('map'), {
      center: LatLng,
      zoom: 15
    });

    for (var i = 0; i < markerData.length; i++) {
      markerLatLng = new google.maps.LatLng({
        lat: markerData[i][0],
        lng: markerData[i][1]
      });

      marker[i] = new google.maps.Marker({
        position: markerLatLng,
        map: map
      });
    }
  });
}

window.onload = function() {
  initMap();
}
