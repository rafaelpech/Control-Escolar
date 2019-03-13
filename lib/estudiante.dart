//usuario Profesor

import 'package:flutter/material.dart';


class PaginaCrear extends StatefulWidget{
  @override
  _PaginaCrear createState () => new _PaginaCrear();
}

class _PaginaCrear extends State<PaginaCrear> {
    
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Estudiante Tic'),
          backgroundColor: Colors.teal[600],
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (BuildContext context){
                return [
                  PopupMenuItem(child: Row(
                    children: <Widget>[

                      IconButton(
                          icon: Icon(Icons.info_outline),onPressed: (null)),
                      Text("Acerca De"),

                    ],
                  ),),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        IconButton(
                icon: Icon(Icons.cancel),
                        ),
                        Text("Cerrar sesión"),

                      ],
                    ),
                  )
                ];
              },
            )
          ],
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}

final _kTabPages = <Widget>[
  Center(child: Column(children: <Widget>[Image.asset("assets/img/horario.jpg"),],)),
  Center(child: Icon(Icons.call_to_action, size: 64.0, color: Colors.teal[500])),
  Center(child: Icon(Icons.add_alert, size: 64.0, color: Colors.teal[500])),
];
final _kTabs = <Widget>[
  Tab(icon: Icon(Icons.calendar_today), text: 'Horario'),
  Tab(icon: Icon(Icons.call_to_action), text: 'Calificaciones'),
  Tab(icon: Icon(Icons.add_alert), text: 'Notificaciones'),
];