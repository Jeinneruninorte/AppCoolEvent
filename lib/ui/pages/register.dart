import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

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
          const register(),
        ],
      ),
      //MyForm(),
    );
  }
}

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

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
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Usuario creado .  .  .')));
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
        icon: Icon(Icons.person),
        hintText: 'Inserte su nombre',
        labelText: 'Nombres',
      ),
      validator: (value) => _validacionombres(value!),
    );
  }

  Widget _correo() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        hintText: 'Inserte su email',
        labelText: 'Email',
      ),
      validator: (value) => _validacioncorreo(value!),
    );
  }

  Widget _password() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.password),
        hintText: 'Inserte su contraseña',
        labelText: 'Contraseña',
      ),
      validator: (value) => _validacionescontrasena(value!),
    );
  }

  String? _validacionombres(String value) {
    if (value.isEmpty) {
      return 'Ingrese algún texto';
    } else if (value.length < 6) {
      return 'Recuerde escribir su nombre y apellidos';
    }
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
    } else if (value.contains('torres') ||
        value.contains('juan') ||
        value.contains('12') ||
        value.contains('andrea') ||
        value.contains('camilo') ||
        value.contains('hotmail')) {
      return 'El correo ya se encuentra registrado';
    }
  }
}
