import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/router/app_routes.dart';
import 'package:flutter_wdg_test/themes/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            options[index].icon,
            color: AppTheme.primary,
          ),
          title: Text(options[index].name),
          onTap: () {
            Navigator.pushNamed(context, options[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
