<!DOCTYPE html>
<html>
    <head>
        <script
            src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
        </script>

        <script>
            var myCenter = new google.maps.LatLng(5.067134, -75.518281);
            var marker;

            function initialize()
            {
                var mapProp = {
                    center: myCenter,
                    zoom: 12,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

                marker = new google.maps.Marker({
                    position: myCenter,
                    animation: google.maps.Animation.BOUNCE
                });

                marker.setMap(map);
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </head>

    <body>
        <div id="googleMap" style="width:500px;height:380px;"></div>
    </body>
</html>
