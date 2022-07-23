import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class estacion3 extends StatefulWidget {
  estacion3({Key? key}) : super(key: key);

  @override
  _estacion3State createState() => _estacion3State();
}

class _estacion3State extends State<estacion3> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-23.45361,-70.44528),
          infoWindow: InfoWindow( 
            title: 'Cerro Moreno Antofagasta Ap.',
            snippet: 'Coordenadas -23.45361	-70.44528',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cerro Moreno Antofagasta Ap.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-23.45361,-70.44528), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Andres Sabella, institución proppietaria Dirección Meteorología de Chile, su código nacional es 230001, código OACI:SCFA, código OMM:84442 y se fundó en 1944'),
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
