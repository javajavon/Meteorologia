import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class devs extends StatefulWidget{
  const devs({Key? key}) : super(key: key);

  @override
  devsState createState() => devsState();
}

class devsState extends State<devs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: Colors.teal[50],
          body: Column(
            children: <Widget> [
              Container(
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                child: const Text ('DIAZ JARA, BYRON', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 2),),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/byron.jpeg',
                    height: 55,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                child: const Text ('Estudiante de la Universidad Tecnológica Metropolitana, cursando actualmente 6to año la carrera Ingeniería Civil en Computacion Mención Informatica, tiene 26 años de edad, tiene algunos hobbys como por ejemplo ver series y practicar artes marciales.', textAlign: TextAlign.justify, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400, letterSpacing: 1.05 ),),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                child: const Text ('ORELLANA CHAPARRO, JAVIERA', textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.w900, letterSpacing: 2),),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/javiera.jpeg',
                    height: 55,
                  ),
                ),),
              Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                child: const Text ('Estudiante de la Universidad Tecnológica Metropolitana, cursando actualmente 4to año la carrera Ingeniería en Informática, 24 años, su hobby preferido es dormir.', textAlign: TextAlign.justify,style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w400, letterSpacing: 1.05  ),),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: const Text ('ESPINOZA SUAREZ, ANTOINE', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 2),),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/antoine.jpeg',
                    height: 55,
                  ),
                ),),
              Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                child: const Text ('Estudiante de la Universidad Tecnológica Metropolitana, cursando actualmente 5to año la carrera Ingeniería  Informática, 24 años de edad, sus hobbys son los videojuegos, música , ver películas y series.', textAlign: TextAlign.justify,style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w400, letterSpacing: 1.05  ),),
              )
            ],
          ),)
    );
  }}