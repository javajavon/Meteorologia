import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion12 extends StatefulWidget {
  estacion12({Key? key}) : super(key: key);

  @override
  _estacion12State createState() => _estacion12State();
}

class _estacion12State extends State<estacion12> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-38.93444,-72.65333),
          infoWindow: InfoWindow( 
            title: 'La Araucanía Ad.TEMUCO',
            snippet: 'Coordenadas -38.93444	-72.65333',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('La Araucanía Ad.TEMUCO'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-38.93444,-72.65333), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Araucania, institución propietaria es la Dirección Meteorológica de Chile, código nacional:380029, código OACI:SCQP, código OMM:85744 y se fundó en 2014'),
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
