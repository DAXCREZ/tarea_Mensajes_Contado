import 'package:flutter/material.dart';

class Notificaciones extends StatelessWidget{
  static const String ROUTE = '/notificaciones';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        centerTitle: true,
      ),
      
      body: ListView(
        children: <Widget>[
          notificacion__msj(context, "http://lorempixel.com/400/400/", "3114252441", "Hola perdido", "06:00 PM", "10"),
          notificacion__msj(context, "http://lorempixel.com/400/400/", "3107031957", "Mani, rotate la tarea", "11:59 PM", "5"),
          notificacion__msj(context, "http://lorempixel.com/400/400/", "3135246409", "Joa mani, no alcanze a terminarlo F", "06:00 AM", "3"),

        ],
      ),
    );
  }

  Widget notificacion__msj(context, String avatar, String celular, String mensaje, String hora, String notificacion){
    return Card(
      child: Container(
        width: 500,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal:20 ),
        color: Colors.white,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(avatar),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // Image(image: image),
                    Text(celular, textAlign: TextAlign.left,),
                    Text(mensaje, textAlign: TextAlign.left)

                  ],
                ),
              ],
            ),


            Column(
              children: <Widget>[
                Text(hora, style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                ),),
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.green,
                  child: Text(notificacion),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}