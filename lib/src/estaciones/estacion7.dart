import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion7 extends StatefulWidget {
  estacion7({Key? key}) : super(key: key);

  @override
  _estacion7State createState() => _estacion7State();
}

class _estacion7State extends State<estacion7> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-33.45528,-70.54861),
          infoWindow: InfoWindow( 
            title: 'Eulogio Sánchez, Tobalaba Ad.	',
            snippet: 'Coordenadas -33.45528	-70.54861',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eulogio Sánchez, Tobalaba Ad.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-33.45528,-70.54861), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Eulogio Sanchez, institución propietaria es la Dirección Meteorológica de Chile, código nacional:330019, código OACI:SCTB, código OMM:85580 y se fundó en 1954'),
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
