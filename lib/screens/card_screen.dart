import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://cdn.unenvironment.org/2020-10/FORESTS.jpg?VersionId=null',
          ),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://images.unsplash.com/photo-1489657780376-e0d8630c4bd3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y291bnRyeXNpZGUlMjBsYW5kc2NhcGV8ZW58MHx8MHx8&w=1000&q=80',
            imageFooter: 'Poblado del norte',
          ),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://img5.goodfon.com/wallpaper/nbig/8/c4/doma-lodki-italiia-zaliv-vernazza-landscape-sea-coast-italy.jpg',
            imageFooter: 'Bonita ciudad costera',
          ),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://media.cnn.com/api/v1/images/stellar/prod/221104090724-01-taschen-remote-experiences-david-de-vleeschauwer.jpg?c=original&q=w_1280,c_fill',
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
