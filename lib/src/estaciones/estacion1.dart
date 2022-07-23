import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show CameraPosition, GoogleMap, GoogleMapController, InfoWindow, LatLng, Marker, MarkerId;

class estacion1 extends StatefulWidget {
  estacion1({Key? key}) : super(key: key);

  @override
  _estacion1State createState() => _estacion1State();
}

class _estacion1State extends State<estacion1> {
  final Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        const Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-18.35555,-70.34028),
          infoWindow: InfoWindow( 
            title: 'Chacalluta, Arica Ap.',
            snippet: 'Coordenadas -18.35555	-70.34028',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chacalluta, Arica Ap.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: const CameraPosition(target: LatLng(-18.35555,-70.34028), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: const Text('Información estación'),
            content: const Text('Ubicada en el Aeropuerto Internacional Chacalluta, la institución propietaria es la Direccion Meteorológica de Chile, su código Nacional es el 180005, código OACI:SCAR, código OMM:85406 y se fundó en 1956'),
            actions: [FlatButton(
              child: const Text('OK'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )],
          ));
        },child: const Icon(Icons.info_outline),)
    );
}
}