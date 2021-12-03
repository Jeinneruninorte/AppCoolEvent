import 'package:flutter_application_1/ui/pages/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Ingreso', (WidgetTester tester) async {
    await tester.pumpWidget(const MyForm());

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
