window.gmap=
  display_map: (lat, lon, zoom) ->
    latlon = new google.maps.LatLng(lat, lon)
    mapOptions =
      center: latlon
      zoom: zoom
      mapTypeId: google.maps.MapTypeId.ROADMAP
    canvas = $('#map_canvas')[0]
    map = new google.maps.Map(canvas, mapOptions)
    marker = new google.maps.Marker(
      position: latlon
      map: map
      title: 'Address'
      )
