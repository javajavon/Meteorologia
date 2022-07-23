import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion20 extends StatefulWidget {
  estacion20({Key? key}) : super(key: key);

  @override
  _estacion20State createState() => _estacion20State();
}

class _estacion20State extends State<estacion20> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-53.00167,-70.83861),
          infoWindow: InfoWindow( 
            title: 'Carlos Ibañez, Punta Arenas Ap.',
            snippet: 'Coordenadas -53.00167	-70.83861',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carlos Ibañez, Punta Arenas Ap.'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-53.00167,-70.83861), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Internacional Presidente Carlos Ibañez del campo, institución propietaria es la Dirección Meteorológica de Chile, código nacional:520006, código OACI:SCCI, código OMM:85934 y se fundo en 1971'),
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
