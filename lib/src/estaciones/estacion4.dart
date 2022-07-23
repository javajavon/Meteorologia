import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion4 extends StatefulWidget {
  estacion4({Key? key}) : super(key: key);

  @override
  _estacion4State createState() => _estacion4State();
}

class _estacion4State extends State<estacion4> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-27.25444,-70.78111),
          infoWindow: InfoWindow( 
            title: 'Desierto de Atacama, Caldera Ad.Copiapo',
            snippet: 'Coordenadas -27.25444	-70.78111',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Desierto de Atacama, Caldera Ad.Copiapo'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-27.25444,-70.78111), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Desierto de Atacama, institución proppietaria es la Direccion Meteorología de Chile, código nacional:270008, código OACI:SCAT, código OMM:85467 y se fundó en 2005'),
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
