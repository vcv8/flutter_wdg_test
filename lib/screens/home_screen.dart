import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_outlined),
          title: const Text('Nombre de ruta'),
          onTap: () {
            Navigator.pushNamed(context, 'listview2');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
