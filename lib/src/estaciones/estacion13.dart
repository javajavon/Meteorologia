import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion13 extends StatefulWidget {
  estacion13({Key? key}) : super(key: key);

  @override
  _estacion13State createState() => _estacion13State();
}

class _estacion13State extends State<estacion13> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-39.65667,-73.08722),
          infoWindow: InfoWindow( 
            title: 'Pichoy, Valdivia Ad.',
            snippet: 'Coordenadas -38.93444	-72.65333',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pichoy, Valdivia Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-39.65667,-73.08722), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Pichoy, institución propietaria es la Dirección Meteorológica de Chile, código nacional:390006, código OACI:SCVD, código OMM:85766 y se fundó en 1965'),
            actions: [FlatButton(
              child: Text('OK'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )],
          ));
        },)
    );
}
}  
