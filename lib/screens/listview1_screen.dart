import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final String title;

  const Listview1Screen({
    super.key,
    required this.title,
  });

  final options = const ['Megaman', 'Mario Land', 'Whyrm', 'Kid Icarus'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: ListView(
        children: <Widget>[
          ...options
              .map((game) => ListTile(
                    leading: const Icon(Icons.accessible_forward_sharp),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_right_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
