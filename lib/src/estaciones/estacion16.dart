import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion16 extends StatefulWidget {
  estacion16({Key? key}) : super(key: key);

  @override
  _estacion16State createState() => _estacion16State();
}

class _estacion16State extends State<estacion16> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-45.39944,-72.67722),
          infoWindow: InfoWindow( 
            title: 'Puerto Aysén Ad.',
            snippet: 'Coordenadas -45.39944	-72.67722',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Puerto Aysén Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-45.39944,-72.67722), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Puerto aisen, institución propietaria es la Dirección Meteorológica de Chile, código nacional:450001, código OACI:SCAS, código OMM:85862 y se fundó en 1931'),
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
