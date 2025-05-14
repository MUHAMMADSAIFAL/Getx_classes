// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:practice_get_application/controller/map_controller/one_location_controller.dart';

// class MapScreen extends StatelessWidget {
//   final MapController mapController = Get.put(MapController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Map with GetX')),
//       body: GoogleMap(
//         onMapCreated: mapController.onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: mapController.initialPosition,
//           zoom: 11.0,
//         ),
//       ),
//     );
//   }
// }
