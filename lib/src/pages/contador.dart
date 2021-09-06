import 'package:flutter/material.dart';

class Contador extends StatefulWidget{
  static const String ROUTE = '/contador';
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<Contador>{
  final estiloTexto =new TextStyle(fontSize: 25);
  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luis Diego'),
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Aumentar - Reiniciar - Disminuir (Rango: -10 a 10)'),
            Text('$conteo', style: estiloTexto,)
          ],
        ),
      ),

      floatingActionButton: tipoBotones()


    );
  }

  Widget tipoBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add),
            onPressed: (){
            setState(() {
              if(conteo < 10){
                conteo++;
              }
            });
            }),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){
              setState(() {
                if(conteo>-10){
                  conteo--;
                }
              });
            }),
        FloatingActionButton(
            child: Icon(Icons.restart_alt),
            onPressed: (){
              setState(() {
                conteo= 0;
              });
            })

      ],
    );
  }
}