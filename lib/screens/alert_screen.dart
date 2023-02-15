import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // // Sobrescribe el estilo por defecto
          // style: ElevatedButton.styleFrom(
          //   foregroundColor: Colors.black,
          //   backgroundColor: Colors.amber,
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 18),
            ),
          ),
          onPressed: () {
            // Función para mostrar la alerta
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {},
      ),
    );
  }
}
