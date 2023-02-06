import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final String title;

  const Listview2Screen({
    super.key,
    required this.title,
  });

  final options = const [
    'Megaman',
    'Mario Land',
    'Whyrm',
    'Kid Icarus',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
        elevation: 0,
        backgroundColor: const Color.fromARGB(161, 167, 111, 37),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (_, index) => ListTile(
          leading: const Icon(Icons.accessible_forward_sharp),
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_right_outlined,
            color: Colors.black,
          ),
          onTap: () {
            print(options[index]);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
