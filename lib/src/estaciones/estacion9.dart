import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion9 extends StatefulWidget {
  estacion9({Key? key}) : super(key: key);

  @override
  _estacion9State createState() => _estacion9State();
}

class _estacion9State extends State<estacion9> {
  @override
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-34.96944,-71.21694),
          infoWindow: InfoWindow( 
            title: 'General Freire, Curicó Ad.',
            snippet: 'Coordenadas -34.96944	-71.21694',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('General Freire, Curicó Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-34.96944,-71.21694), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Club Aereo Curico, institución propietaria es la Dirección Meteorológica de Chile, código nacional:340031, código OACI:SCIC, código OMM:85629 y se fundó en 1917'),
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
