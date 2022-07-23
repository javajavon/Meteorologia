import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion19 extends StatefulWidget {
  estacion19({Key? key}) : super(key: key);

  @override
  _estacion19State createState() => _estacion19State();
}

class _estacion19State extends State<estacion19> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-46.58500,-71.68528),
          infoWindow: InfoWindow( 
            title: 'Chile Chico Ad.',
            snippet: 'Coordenadas -46.58500	-71.68528',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chile Chico Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-46.58500,-71.68528), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Eudromia Elegans Producciones, institución propietaria es la Dirección Meteorológica de Chile, código nacional:460001, código OACI:SCCC, código OMM:85886 y se fundo en 1952'),
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
