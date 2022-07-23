import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion24 extends StatefulWidget {
  estacion24({Key? key}) : super(key: key);

  @override
  _estacion24State createState() => _estacion24State();
}

class _estacion24State extends State<estacion24> {
  @override
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-63.32083,-57.89944),
          infoWindow: InfoWindow( 
            title: 'Bernardo O`Higgins, Base Antártica',
            snippet: 'Coordenadas -63.32083	-57.89944',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bernardo O`Higgins, Base Antártica'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-63.32083,-57.89944), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en la Base Bernando O Higgins, Antártica, institución propietaria es la Dirección Meteorológica de Chile, código nacional:950003, código OACI:SCBO, código OMM:89059 y se fundo en 1952'),
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
