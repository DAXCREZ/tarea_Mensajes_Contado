import 'package:flutter/material.dart';
import 'package:notificacion_exercise/src/pages/Notificaciones.dart';
import 'package:notificacion_exercise/src/pages/contador.dart';

class Home extends StatelessWidget{
  static const String ROUTE = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Ejercicios'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Mensajes'),
                onPressed:(){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Notificaciones()
                ));
            }),

            ElevatedButton(
                child: Text('Contador'),
                onPressed:(){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contador()
                      ));
                })
          ],
        ),
      ),
    );
  }
}