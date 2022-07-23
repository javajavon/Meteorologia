

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meteorologia/src/BNavigation/bottom_nav.dart';

class BNavigator extends StatefulWidget{
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BNavigatorState createState() => _BNavigatorState();
  }

  class _BNavigatorState extends State<BNavigator>{
  int index=0;
  @override
    Widget build(BuildContext context){
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState((){
          index=i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: 'Inicio'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.summarize_outlined),
            label: 'Estimacion'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_search_rounded),
            label: 'Devs'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Perfil'
        ),
      ]
    );
  }
}


