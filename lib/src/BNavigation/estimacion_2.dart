import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class estimaciones extends StatefulWidget {
  const estimaciones({Key? key}) : super(key: key);


  @override
  _estimacionState createState() => _estimacionState();
}

class _estimacionState extends State<estimaciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: const Center(child: Icon(
        Icons.construction_rounded,
        size: 150.0,
        color: Colors.blueGrey,
      ),),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.info_outline), onPressed:(){
        showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
          title: const Text('Próximamente...'),
          content: const Text('Permitirá disponibilizar datos meteorológicos historicos, a través de un API REST y así estimar información de distintos lugares del país'),
          actions: [FlatButton(
            child: const Text('OK'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )],
        ));
      },),
    );
  }
}