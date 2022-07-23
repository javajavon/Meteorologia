import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion15 extends StatefulWidget {
  estacion15({Key? key}) : super(key: key);

  @override
  _estacion15State createState() => _estacion15State();
}

class _estacion15State extends State<estacion15> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-41.44750,-73.09583),
          infoWindow: InfoWindow( 
            title: 'El Tepual Puerto Montt Ap.',
            snippet: 'Coordenadas -41.44750	-73.09583',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('El Tepual Puerto Montt Ap.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-41.44750,-73.09583), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto El Tepual, institución propietaria es la Dirección Meteorológica de Chile, código nacional:410005, código OACI:SCTE, código OMM:85799 y se fundó en 1963'),
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
