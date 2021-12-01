import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class RegistroForm extends StatelessWidget {
  const RegistroForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Regístrate"),
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
          register(),
        ],
      ),
      //MyForm(),
    );
  }
}

class register extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _nombres(),
          _correo(),
          _password(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Validando la información .  .  .')));
                }
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _nombres() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        hintText: 'Inserte su nombre',
        labelText: 'Nombres',
      ),
      validator: (value) => _validaciones(value!),
    );
  }

  Widget _correo() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        hintText: 'Inserte su email',
        labelText: 'Email',
      ),
      validator: (value) => _validaciones(value!),
    );
  }

  Widget _password() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.password),
        hintText: 'Inserte su contraseña',
        labelText: 'Contraseña',
      ),
      validator: (value) => _validaciones(value!),
    );
  }

  String? _validaciones(String value) {
    if (value.isEmpty) {
      return 'Ingrese algún texto';
    }
  }
}
