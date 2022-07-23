import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion17 extends StatefulWidget {
  estacion17({Key? key}) : super(key: key);

  @override
  _estacion17State createState() => _estacion17State();
}

class _estacion17State extends State<estacion17> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-45.59083,-72.10222),
          infoWindow: InfoWindow( 
            title: 'Teniente Vidal, Coyhaique Ad.',
            snippet: 'Coordenadas -45.59083	-72.10222',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teniente Vidal, Coyhaique Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-45.59083,-72.10222), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aerodromo Teniente vidal, institución propietaria es la Dirección Meteorológica de Chile, código nacional:450004, código OACI:SCCY, código OMM:85864 y se fundó en 1943'),
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
