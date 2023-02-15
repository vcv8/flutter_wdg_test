import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.brown[900],
              child: const Text('VC'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://i.imgur.com/X9TfeFX.png'),
        ),
      ),
    );
  }
}
