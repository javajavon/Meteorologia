import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion21 extends StatefulWidget {
  estacion21({Key? key}) : super(key: key);

  @override
  _estacion21State createState() => _estacion21State();
}

class _estacion21State extends State<estacion21> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-54.93167,-67.61556),
          infoWindow: InfoWindow( 
            title: 'Guardiamarina Zañartu, Pto Williams Ad.',
            snippet: 'Coordenadas -54.93167	-67.61556',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guardiamarina Zañartu, Pto Williams Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-54.93167,-67.61556), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto guardiamarina Zañatu, institución propietaria Dirección Meteorológica de Chile, código nacional:55001, código OACI:SCGZ, código OMM:85968 y se fundo en 1959'),
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
