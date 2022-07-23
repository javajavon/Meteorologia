import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion14 extends StatefulWidget {
  estacion14({Key? key}) : super(key: key);

  @override
  _estacion14State createState() => _estacion14State();
}

class _estacion14State extends State<estacion14> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-40.61444,-73.05750),
          infoWindow: InfoWindow( 
            title: 'Cañal Bajo, Osorno Ad.',
            snippet: 'Coordenadas -40.61444	-73.05750',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cañal Bajo, Osorno Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-40.61444,-73.05750), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Caña Bajo Carlos hott siebert, institución propietaria Dirección Meteorológica de Chile, código nacional:400009, código OACI:SCJO, código OMM:85782 y se fundó en 1952'),
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
