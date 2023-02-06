import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/screens/listview2_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Listview2Screen(title: 'ListView Tipo 2'),
    );
  }
}
