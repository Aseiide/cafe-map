function initMap() {
    geocoder = new google.maps.Geocoder();
    // 位置情報を取得
    navigator.geolocation.getCurrentPosition(function(position) {
        LatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

        // 取得した位置情報を中心に表示
        map = new google.maps.Map(document.getElementById('map'), {
            center: LatLng,
            zoom: 15
        });
    });

    //lat, lngに緯度経度渡すと、ピン表示出来る
    const myLatLng = { lat: -25.363, lng: 131.044 };
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 4,
        center: myLatLng,
    });

    new google.maps.Marker({
        position: myLatLng,
        map,
        title: "Hello World!",
    });

}

window.onload = function() {
    initMap();
}
