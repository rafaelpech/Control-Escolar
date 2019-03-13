import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de calificaciones',
      theme: ThemeData.light(),
      home: PaginaInicio(),
      initialRoute: "/",
      routes: {
        '/sesion': (context)=>Tab3Dialog(),
      },
    );
  }
}

class PaginaInicio extends StatefulWidget{
  @override
  _PaginaInicio createState () => new _PaginaInicio();
}

class _PaginaInicio extends State<PaginaInicio>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/logo.png"),
            Text("REGISTRO DE CALIFICACIONES", style: TextStyle(color: Colors.black54),),
            RaisedButton(
              child: Text("ACCEDER"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )
              ),
                onPressed: (){
                  Navigator.pushNamed(context, "/sesion");
                }
            )
          ],
        ),
      ),
    );
  }
}
