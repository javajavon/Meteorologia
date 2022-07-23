import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class estacion2 extends StatefulWidget {
  estacion2({Key? key}) : super(key: key);

  @override
  _estacion2State createState() => _estacion2State();
}

class _estacion2State extends State<estacion2> {
  final Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        const Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-20.54917,-70.18111),
          infoWindow: InfoWindow( 
            title: 'Diego Aracena Iquique Ap.',
            snippet: 'Coordenadas -20.54917	-70.18111',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diego Aracena Iquique Ap.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: const CameraPosition(target: LatLng(-20.54917,-70.18111), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: const Text('Información estación'),
            content: const Text('Ubicada en el Aeropuerto General diego Arabena, institución propietaria es la Direccion Meteorológica de Chile, su código nacional es 200006, código OACI:SCDA, código OMM:85418 y se fundó en 1981'),
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
