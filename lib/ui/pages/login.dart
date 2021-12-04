import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/controllers/user_profile_controller.dart';
import 'package:flutter_application_1/ui/pages/user_profile/user_profile.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';

class Iniciosesion extends StatelessWidget {
  const Iniciosesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio de sesión"),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(30.0),
              child: const Text(
                'COOL EVENT una app más allá de eventos',
                style: TextStyle(
                  color: Color.fromRGBO(46, 116, 154, 15),
                  fontFamily: 'RobotoMono',
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const MyForm(),
          /*Center(
            child: Image.network(
                'https://colectivosonoro.com/wp-content/uploads/2015/07/Conciertos-960x768.jpg',
                scale: 0.2),
          ),*/
          //),
        ],
      ),
      //MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<MyForm> {
  UserProfileController userProfileController = Get.find();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _email(emailController),
          _password(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: ElevatedButton(
              key: const Key('ingresar'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  userProfileController.setName("Daniel Sebastian Rincon");
                  userProfileController.setEmail(emailController.text);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Validando la información .  .  .')));

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfile()));
                }
              },
              child: const Text('Login'),
            ),
            //],
          ),
          /*ElevatedButton(
              child: const Text('Chatear'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatPage(
                              title: 'NUEVO CHAT',
                            )));
              }),*/
        ],
      ),
    );
  }

  Widget _email(var emailController) {
    return TextFormField(
      key: const Key('user'),
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        hintText: 'Ingrese su email',
        labelText: 'Email',
      ),
      controller: emailController,
      validator: (value) => _validacioncorreo(value!),
    );
  }

  Widget _password() {
    return TextFormField(
      key: const Key('contraseña'),
      decoration: const InputDecoration(
        icon: Icon(Icons.password),
        hintText: 'Inserte su contraseña',
        labelText: 'Contraseña',
      ),
      validator: (value) => _validacionescontrasena(value!),
    );
  }

  String? _validacionescontrasena(String value) {
    if (value.isEmpty) {
      return 'Ingrese algún texto';
    } else if (value.length < 6) {
      return 'No cumple con la cantidad mínima de caracteres';
    }
  }

  dynamic _validacioncorreo(value) {
    bool _isValid = EmailValidator.validate(value);
    if (value.isEmpty) {
      return 'Ingrese algún texto';
    } else if (_isValid != true) {
      return 'Correo invalido';
    }
  }
}
