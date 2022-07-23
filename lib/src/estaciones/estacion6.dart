import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion6 extends StatefulWidget {
  estacion6({Key? key}) : super(key: key);

  @override
  _estacion6State createState() => _estacion6State();
}

class _estacion6State extends State<estacion6> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-33.06528,-71.55639),
          infoWindow: InfoWindow( 
            title: 'Rodelillo, Ad.VALPARAISO',
            snippet: 'Coordenadas -33.06528	-71.55639',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rodelillo, Ad.VALPARAISO'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-33.06528,-71.55639), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Rodelillo, institución propietaria Dirección Meteorológica de Chile, código nacional:330007, código OACI:SCRD, código OMM:85560 y se fundó en 1965'),
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
