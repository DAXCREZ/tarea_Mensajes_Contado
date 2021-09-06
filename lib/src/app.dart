import 'package:flutter/material.dart';
import 'package:notificacion_exercise/src/pages/contador.dart';
import 'package:notificacion_exercise/src/pages/notificaciones.dart';
import 'package:notificacion_exercise/src/pages/home.dart';



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.ROUTE,
      routes: {
        Home.ROUTE: (_)=>Home(),
        Notificaciones.ROUTE: (_)=>Notificaciones(),
        Contador.ROUTE: (_)=>Contador(),
      },

      );
  }
}