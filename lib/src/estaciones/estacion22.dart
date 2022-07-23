import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class estacion22 extends StatefulWidget {
  estacion22({Key? key}) : super(key: key);

  @override
  _estacion22State createState() => _estacion22State();
}

class _estacion22State extends State<estacion22> {
  @override
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-62.19194,-58.97972),
          infoWindow: InfoWindow( 
            title: 'C.M.A. Eduardo Frei Montalva, Antártica',
            snippet: 'Coordenadas -62.19194	-58.97972',
        ))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('C.M.A. Eduardo Frei Montalva, Antártica'),),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: new CameraPosition(target: LatLng(-62.19194,-58.97972), zoom: 12),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.info_outline), backgroundColor: Colors.cyan[700],onPressed:(){
          showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
            title: Text('Información estación'),
            content: Text('Ubicada en el Aeropuerto Teniente R. Marsh, institución propietaria es la Dirección Meteorológica de Chile, código nacional:950001, código OACI:SCRM, código OMM:89056 y se fundo en 1969'),
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
