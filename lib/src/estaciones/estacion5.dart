import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion5 extends StatefulWidget {
  estacion5({Key? key}) : super(key: key);

  @override
  _estacion5State createState() => _estacion5State();
}

class _estacion5State extends State<estacion5> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-29.91444,-71.20667),
          infoWindow: InfoWindow( 
            title: 'La Florida, La Serena Ad.',
            snippet: 'Coordenadas -29.91444	-71.20667',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('La Florida, La Serena Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-29.91444,-71.20667), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto La Florida, Institución propietaria Dirección Meteorológica de Chile, código nacional:290004, código OACI:SCSE, código OMM:85488 y se fundó en 1954'),
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