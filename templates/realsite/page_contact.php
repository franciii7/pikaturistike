<!DOCTYPE html>
<html>
<head>
    {template_head}

    <script>
        $(document).ready(function(){
        var map;
        
        if($('#map-contact').length){

            <?php if(config_db_item('map_version') =='open_street'):?>
            var contact_map;
            contact_map = L.map('map-contact', {
                center: [{settings_gps}],
                zoom: {settings_zoom},
                scrollWheelZoom: scrollWheelEnabled,
            });
                
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(contact_map);
            var positron = L.tileLayer('https://cartodb-basemaps-{s}.global.ssl.fastly.net/light_all/{z}/{x}/{y}{r}.png').addTo(contact_map);
            var property_marker = L.marker(
                [{settings_gps}],
                {icon: L.divIcon({
                        html: '<img src="assets/img/markers/house.png">',
                        className: 'marker apartment-mark-color',
                        iconSize: [40, 40],
                        popupAnchor: [+2, -40],
                        iconAnchor: [17, 47],
                    })
                }
            ).addTo(contact_map);

            property_marker.bindPopup("{settings_address},<br />{lang_GPS}: {settings_gps}");
            <?php else:?>
            var sw_infoBox = new google.maps.InfoWindow({
                content: ''
            });
            var myLocationEnabled = true;
            var style_map = '';
            var scrollwheelEnabled = false;
            var markers1 = new Array();
            var markers = new Array();
            var mapOptions = {
                center: new google.maps.LatLng({settings_gps}),
                zoom: {settings_zoom},
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                scrollwheel: scrollwheelEnabled,
                styles: mapStyle
            };

            var map = new google.maps.Map(document.getElementById('map-contact'), mapOptions);

            var myLatlng = new google.maps.LatLng({settings_gps});
            var callback = {
                        'click': function(map, e){
                            var activemarker = e.activemarker;
                            jQuery.each(markers, function(){
                                this.activemarker = false;
                            })

                            if(activemarker) {
                                sw_infoBox.close();
                                e.activemarker = false;
                                return true;
                            }

                            sw_infoBox.setContent("<?php _jse($settings_websitetitle); ?> <br /><?php echo lang_check('Address');?>: <?php _jse($settings_address); ?> </a>");
                            sw_infoBox.open(map, e);

                            e.activemarker = true;
                        }
                };
            var marker_inner ='<img  src="assets/img/markers/house.png" alt="">';
            var arg = {'marker_classes':"marker apartment-mark-color"};
            var marker = new CustomMarker(myLatlng,map,marker_inner,callback, arg);
            
            <?php endif;?>
            
        }
        })

    </script>
</head>
<body>
<div class="page-wrapper">
     <div class="header header-standard">
        <?php _widget('header_loginmenu');?>
        <?php _widget('header_mainmenu');?>
    </div><!-- /.header-->
    <div class="main">
        <div id="map-contact"></div>
        
        <div class="container">
            <div class="content">

                
                
                
            </div>
            
        </div>
        <!-- /.container -->
    </div>
    <!-- /.main -->
    <?php _subtemplate( 'footers', _ch($subtemplate_footer, 'standart')); ?>
</div>
<!-- /.page-wrapper-->
 <?php _widget('custom_javascript');?>
</body>
</html>