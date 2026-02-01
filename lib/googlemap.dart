import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatelessWidget {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  GoogleMapDemo({super.key});

  Set<Marker> markers = {
    Marker(markerId: MarkerId("1"),
        position: LatLng(33.5848, 73.0658),
        infoWindow: InfoWindow(title: "Rawalpindi")
    ),
    Marker(markerId: MarkerId("2"),
        position: LatLng(33.5848, 73.0652),
        infoWindow: InfoWindow(title: "Lahore")
    ),
    Marker(markerId: MarkerId("3"),
        position: LatLng(33.5848, 73.0655),
        infoWindow: InfoWindow(title: "Karachi")
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: GoogleMap(
        markers: markers,
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
            target: LatLng(33.5848, 73.0658),
            zoom: 20),
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
    );
  }
}