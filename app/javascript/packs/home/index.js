let marker = [];
let markerData = [];

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
            let id = markerData[i]["id"]
            const lat = document.getElementById("lat").dataset.lat
            const lng = document.getElementById("lng").dataset.lng
            const Store = { lat: parseFloat(lat), lng: parseFloat(lng) }

            markerLatLng = new google.maps.LatLng({
                lat: lat[i],
                lng: lng[i]
            });

            console.log(lat[i]);
            console.log(lng[i]);

            marker[i] = new google.maps.Marker({
                position: markerLatLng,
                map: map
            });
        }

        //緯度経度を定義
        // const lat = document.getElementById("lat").dataset.lat
        // const lng = document.getElementById("lng").dataset.lng
        // const Store = {lat: parseFloat(lat), lng: parseFloat(lng)} 

        // new google.maps.Marker({
        //   position: Store,
        //   map,
        //   title: "Hello World!",
        // });
    });
}
window.onload = function() {
    initMap();
}