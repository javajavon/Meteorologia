import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion11 extends StatefulWidget {
  estacion11({Key? key}) : super(key: key);

  @override
  _estacion11State createState() => _estacion11State();
}

class _estacion11State extends State<estacion11> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-36.78055,-73.06639),
          infoWindow: InfoWindow( 
            title: 'Carriel Sur, Concepción Ap.',
            snippet: 'Coordenadas -36.78055	-73.06639',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carriel Sur, Concepción Ap.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-36.78055,-73.06639), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Carriel Sur, institución propietaria es la Dirección Meteorológica de Chile, código nacional:360019, código OACI:SCIE, código OMM:85682 y se fundó en 1968'),
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
