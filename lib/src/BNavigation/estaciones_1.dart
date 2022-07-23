import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meteorologia/src/estaciones/estacion1.dart';
import 'package:meteorologia/src/estaciones/estacion2.dart';
import 'package:meteorologia/src/estaciones/estacion3.dart';
import 'package:meteorologia/src/estaciones/estacion4.dart';
import 'package:meteorologia/src/estaciones/estacion5.dart';
import 'package:meteorologia/src/estaciones/estacion6.dart';
import 'package:meteorologia/src/estaciones/estacion7.dart';
import 'package:meteorologia/src/estaciones/estacion8.dart';
import 'package:meteorologia/src/estaciones/estacion9.dart';
import 'package:meteorologia/src/estaciones/estacion10.dart';
import 'package:meteorologia/src/estaciones/estacion11.dart';
import 'package:meteorologia/src/estaciones/estacion12.dart';
import 'package:meteorologia/src/estaciones/estacion13.dart';
import 'package:meteorologia/src/estaciones/estacion14.dart';
import 'package:meteorologia/src/estaciones/estacion15.dart';
import 'package:meteorologia/src/estaciones/estacion16.dart';
import 'package:meteorologia/src/estaciones/estacion17.dart';
import 'package:meteorologia/src/estaciones/estacion18.dart';
import 'package:meteorologia/src/estaciones/estacion19.dart';
import 'package:meteorologia/src/estaciones/estacion20.dart';
import 'package:meteorologia/src/estaciones/estacion21.dart';
import 'package:meteorologia/src/estaciones/estacion22.dart';
import 'package:meteorologia/src/estaciones/estacion23.dart';
import 'package:meteorologia/src/estaciones/estacion24.dart';

class estaciones extends StatefulWidget{
  const estaciones({Key? key}) : super(key: key);

  @override
  estacionesState createState() => estacionesState();

}

class estacionesState extends State<estaciones> {
  @override
  Widget build(BuildContext context){
    _estaciones() {
      final lst = [
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Arica'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion1()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Tarapacá'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion2()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Antofagasta'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion3()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Atacama'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion4()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Coquimbo'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion5()));
          },
        ),

        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Valparaiso'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion6()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Santiago I'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion7()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Santiago II'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Estacion8()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Maule'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion9()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Ñuble'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion10()));
          },
        ),

        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Concepción'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion11()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Temuco'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion12()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Los Rios'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion13()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Los Lagos I'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion14()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Los Lagos II'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion15()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Aysén I'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion16()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Aysén II'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion17()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Aysén III'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion18()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Aysén IV'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion19()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Magallanes I'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion20()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Magallanes II'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion21()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Atártica II'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion22()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Atártica II'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion23()));
          },
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.store_outlined),),
          title: const Text('Estación Atártica III'),
          trailing: const Icon(Icons.location_on_outlined),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => estacion24()));
          },
        )
      ];
    }
    var lst;
    return ListView.builder(
      itemCount: lst.length,
      itemBuilder: (context,index){
        return lst[index];
      },
    );
  }
}