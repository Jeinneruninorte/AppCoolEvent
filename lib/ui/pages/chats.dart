import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:loggy/loggy.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // Listado de cadenas
  var listado = [
    Chat("Juan Peréz", "Hola"),
    Chat("Jim Jay", "Hola"),
    Chat("Juan Peréz", "Como estas?"),
    Chat("Jim Jay", "Bien y tu?"),
    Chat("Juan Peréz", "Normal"),
  ];
  //ChatController chatController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // Lista de Post
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: listado.length,
              itemBuilder: (context, i) {
                return Card(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Column(
                    children: [
                      Text(
                        listado[i].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(listado[i].desc),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Escribir Mensaje',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Chat {
  late String name;
  late String desc;

  Chat(this.name, this.desc);
}
