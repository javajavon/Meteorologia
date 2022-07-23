import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteorologia/src/BNavigation/bottom_nav.dart';
import 'package:meteorologia/src/BNavigation/rutas.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);
  static Widget create(BuildContext context) => HomeScreen();
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen>{
  int index=0;
  BNavigator ?myBNav;
  @override
  void initState(){
    myBNav = BNavigator(currentIndex: (i){
      setState(() {
        index=i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNav,
      body: rutas(index: index),
    );
  }
}




