import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Víctor',
      'last_name': 'Covi',
      'email': 'vcv183@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: <Widget>[
                const CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  helperText: 'Solo letras',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  helperText: 'Solo letras',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo de usuario',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña de usuario',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const Center(
                    child: Text('Guardar'),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      //print('Fromulario no válido');
                      return;
                    }
                    // Imprimir valores del formulario
                    // print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
