//Verify that my reference it's correct
console.log("Hola desde google");

$(document).ready(function () {
    getLocation();
});
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showLocation, showError);
    } else {
        alert("La geolocalización no es soportada por este navegador");
    }
}


//Function to show location (if these is got)

function showLocation(position) {
    console.log(position);
    const lat = position.coords.latitude;
    const lng = position.coords.longitude;

    //Show the location on latitude and longitude
    console.log("La latitud es: "+lat+" La longitud es: "+lng);
   
    getDirection(19.07154377793228, -98.22515478523921);
    initMapComponents(19.07154377793228, -98.22515478523921);
}

//Function that's execute when we got a error to get the geolocation

function showError(error) {
    switch (error.code) {
        case error.PERMISSION_DENIED:
            alert("El usuario nego el permiso ala aplicación.");
            break;
        case error.PERMISSION_UNAVALIBLE:
            alert("La ubicación no esta disponible.");
            break;
        case error.PERMISSION_TIMEOUT:
            alert("Se agoto el tiempo de espera.");

            break;
        default:
            alert("Ha ocurrido un error.");

            break;
    }
}


//Function to get the coords' direction

function getDirection(lat, lng) {
    const latLgt = { lat: lat ,lng: lng };

    const geoCoder = new google.maps.Geocoder();

    geoCoder.geocode({ location: latLgt }, function (results, status) {
        if (status === 'OK') {
            console.log(results);
            if (results[0]) {
                const direction = results[0].formatted_address;
                //Show the got place in HTML
                document.getElementById('direction').innerText = "Dirección: " + direction;

            } else {
                alert("No se econtraron resultados de la dirección.");
            }
        } else {
            alert("Geocodificación fallida: "+status);
        }
    });


}

function initMapComponents(lat, lng) {

    const ubication = { lat: lat, lng: lng };

    //Initialization of map
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: ubication
    });

    //Add a pointer in map
    new google.maps.Marker({
        position: ubication,
        map: map,
        title: "Ubicación Actual"
    });

    //Config Street View
    const paramount = new google.maps.StreetViewPanorama(
        document.getElementById("street"), {
            position: ubication,
            pov: {heading: 90, pitch: 5}
    });

    //Vinculate the Street View to map
    map.setStreetView(paramount);

}