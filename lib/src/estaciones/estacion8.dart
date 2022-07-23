import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Estacion8 extends StatefulWidget {
  Estacion8({Key? key}) : super(key: key);

  @override
  _Estacion8State createState() => _Estacion8State();
}

class _Estacion8State extends State<Estacion8> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-33.37833,-70.78778),
          infoWindow: InfoWindow( 
            title: 'Pudahuel Santiago',
            snippet: 'Coordenadas -33.37833	-70.78778',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pudahuel Santiago'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-33.37833,-70.78778), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Internacional Arturo Merino Benitez, institución propietaria es la Dirección Meteorológica de Chile, código nacional:330021, código OACI:SCEL, código OMM:85574 y se fundó en 1967'),
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
