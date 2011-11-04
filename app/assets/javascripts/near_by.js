$(document).ready(function(){
  map = new GMaps({
    div: '#map',
    lat: -12.043333,
    lng: -77.028333,
    zoom: 18
  });
  map.geolocate({
    success: function(position){
      map.setCenter(position.coords.latitude, position.coords.longitude, function(){
        map.addMarker({
          lat: position.coords.latitude,
          lng: position.coords.longitude,
          title: '¡Tú!',
          clickable: false,
          icon: $('#profile_avatar').attr('src')
        });
        you = map.markers[map.markers.length-1];
        new google.maps.Circle({
          map: map.map,
          center: you.getPosition(),
          radius: 100,
          strokeColor: '#7ba5e4',
          fillColor: '#d8e5f7',
          strokeWeight: 2
        });
      });
    },
    error: function(error){
      error = '<div class="alert-message error" style="display:none"><a class="close" href="#">×</a><p>No pudimos ubicarte en el mapa :(</p></div>';
      $('.well:first').prepend(error);
      $('.error').fadeIn();
    },
    not_supported: function(){
      error = '<div class="alert-message error" style="display:none"><a class="close" href="#">×</a><p>No pudimos ubicarte en el mapa :(</p></div>';
      $('.well:first').prepend(error);
      $('.error').fadeIn();
    }
  });
});