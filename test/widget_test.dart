<<<<<<< HEAD
=======
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

>>>>>>> 1a82e2d54c499f3e39b6bba747c33dcb50f5cac1
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/login.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Ingreso', (WidgetTester tester) async {
    await tester.pumpWidget(MyForm());

    expect(find.text('Login'), findsNothing);
  });

/*
}
Pruebas de widgets:
Widget de login, signup:
Probar que el correo tenga el formato requerido
Probar que la contraseña tenga mínimo 6 caracteres
Probar que los campos de correo y contraseña tengan que estar ocupados
Widgets de feeds:
Probar que se pueden visualizar elementos
Probar que se pueden agregar elementos
Pruebas de integración:
Probar sistema de autenticación:
Ingresar con usuario no existente
Crear usuario
Salir
*/
}
