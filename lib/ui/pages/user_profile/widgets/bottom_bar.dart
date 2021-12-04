import 'package:flutter/material.dart';

import '../../chats.dart';
import '../../ubicacion.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Ubicacion()));
            }),
      ],
    );
  }
}
