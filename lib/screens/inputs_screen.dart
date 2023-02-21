import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: false,
                initialValue: null,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  //print(value);
                },
                validator: (value) {
                  if (value == null || value == '') {
                    return 'Este campo es obligatorio';
                  } else {
                    return value.length < 3 ? 'Mínimo de 3 letras' : null;
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                  helperText: 'Sólo letras',
                  counterText: '18 caracteres máximo',
                  //prefixIcon: Icon(Icons.verified_outlined),
                  suffixIcon: Icon(Icons.people_alt_outlined),
                  icon: Icon(Icons.assignment_ind_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
