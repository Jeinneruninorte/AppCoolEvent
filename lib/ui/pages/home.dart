import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/ui/pages/ubicacion.dart';
import 'package:flutter_application_1/ui/pages/chats.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inicio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(title: 'Perfil de usuario'),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          fontFamily: 'Nova-Square',
          fontSize: 35,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30.0,
            semanticLabel: 'Menu',
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ));
            },
            icon: const Icon(
              Icons.exit_to_app_outlined,
              size: 35,
              semanticLabel: 'Salir',
            ),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                icon: const Icon(Icons.chat),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatPage(
                                title: 'Nuevo chat',
                              )));
                }),
            IconButton(
                icon: const Icon(Icons.location_history),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Ubicacion()));
                }),
          ],
        ),
      ),
    );
  }
}
