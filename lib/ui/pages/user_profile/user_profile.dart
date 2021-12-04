import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/controllers/user_profile_controller.dart';
import 'package:get/get.dart';

import '../../app.dart';
import 'widgets/bottom_bar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profile(title: 'Perfil de usuario'),
    );
  }
  
}

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  final Widget _bottomBar = const BottomBar();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          fontFamily: 'Nova-Square',
          fontSize: 25,
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
                    builder: (context) => const App(),
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
      body: Column(
        children: [
          const Info(),
          _bottomBar,
        ],
      )
    );
  }
}

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);
  @override
  State<Info> createState() => _Info();
}

class _Info extends State<Info> {
  UserProfileController userProfileController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Obx(()=>Text(
            userProfileController.name + "\n" +
            userProfileController.email)),
        )
      ],
    );
  }
}
