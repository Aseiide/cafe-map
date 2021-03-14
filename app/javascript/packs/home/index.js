let marker = [];
let markerData = JSON.parse(document.querySelector("#marker-data").dataset.position);
// let markerData = document.getElementById("lng").dataset.lng;
// let latArray = document.getElementById("lat").dataset.lat
// let lngArray = document.getElementById("lng").dataset.lng

function initMap() {
  geocoder = new google.maps.Geocoder();
  // 位置情報を取得
  navigator.geolocation.getCurrentPosition(function(position) {
    LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
    map = new google.maps.Map(document.getElementById('map'), {
      center: LatLng,
      zoom: 15
    });

    for (var i = 0; i < markerData.length; i++) {
      // let id = markerData[i]["id"]
      // const lat = document.getElementById("lat").dataset.lat
      // const lng = document.getElementById("lng").dataset.lng
      //const Store = { lat: parseFloat(lat), lng: parseFloat(lng) }

      markerLatLng = new google.maps.LatLng({
        lat: markerData[i][0],
        lng: markerData[i][1]
      });

      marker[i] = new google.maps.Marker({
        position: markerLatLng,
        map: map
      });
    }

    // // 緯度経度を渡して、ピン表示
    // const lat = 35.658584
    // const lng = 139.7454316
    // const Store = { lat: parseFloat(lat), lng: parseFloat(lng) }

    // new google.maps.Marker({
    //     position: Store,
    //     map
    // });
  });
}

window.onload = function() {
  initMap();
}
