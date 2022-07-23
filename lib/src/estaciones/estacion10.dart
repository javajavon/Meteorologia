import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion10 extends StatefulWidget {
  estacion10({Key? key}) : super(key: key);

  @override
  _estacion10State createState() => _estacion10State();
}

class _estacion10State extends State<estacion10> {
  @override
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-36.58583,-72.03667),
          infoWindow: InfoWindow( 
            title: 'General Bernardo O Higgins, Chillán Ad.',
            snippet: 'Coordenadas -36.58583	-72.03667',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('General Bernardo O Higgins, Chillán Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-36.58583,-72.03667), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el  Aereopuerto general Bernando O Higgins, institución propietaria es la Dirección Meteorológica de Chile, código nacional:360011, código OACI:SCCH, código OMM:85672 y se fundó en 1939'),
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
