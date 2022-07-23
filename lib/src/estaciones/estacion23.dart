import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion23 extends StatefulWidget {
  estacion23({Key? key}) : super(key: key);

  @override
  _estacion23State createState() => _estacion23State();
}

class _estacion23State extends State<estacion23> {
  @override
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-62.47861,-59.66417),
          infoWindow: InfoWindow( 
            title: 'Arturo Prat, Base Antártica',
            snippet: 'Coordenadas -62.47861	-59.66417',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arturo Prat, Base Antártica'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-62.47861,-59.66417), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en la isla Greenwich, intitución propietaria es la Dirección Meteorológica de Chile, código nacional:950002, código OACI:SCBP, código OMM:89057 y se fundo en 1947'),
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
