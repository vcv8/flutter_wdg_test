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
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  helperText: 'Solo letras',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  helperText: 'Solo letras',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo de usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña de usuario',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  hint: const Text('Rol'),
                  validator: (value) {
                    return value == null ? 'Campo obligatorio' : null;
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Developer';
                  },
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
                    // Imprimir valores del formulario || Valores a backend
                    //print(formValues);
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
