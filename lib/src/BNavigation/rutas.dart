import 'package:flutter/widgets.dart';
import 'package:meteorologia/src/BNavigation/devs_3.dart';
import 'package:meteorologia/src/BNavigation/estaciones_1.dart';
import 'package:meteorologia/src/BNavigation/estimacion_2.dart';
import 'package:meteorologia/src/BNavigation/perfil_4.dart';

class rutas extends StatelessWidget{
  final int index;

  const rutas({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const estaciones(),
      const estimaciones(),
      const devs(),
      perfil()
    ];
    return myList[index];
  }

}
