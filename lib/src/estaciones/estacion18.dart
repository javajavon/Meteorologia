import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion18 extends StatefulWidget {
  estacion18({Key? key}) : super(key: key);

  @override
  _estacion18State createState() => _estacion18State();
}

class _estacion18State extends State<estacion18> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-45.91833,-71.67778),
          infoWindow: InfoWindow( 
            title: 'Balmaceda Ad.',
            snippet: 'Coordenadas -45.91833	-71.67778',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Balmaceda Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-45.91833,-71.67778), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aerodromo Balmaceda, institución propietaria Dirección Meteorológica de Chile, código nacional:480005, código OACI:SCBA, código OMM:85874 y se fundo en 1950'),
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
