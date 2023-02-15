import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/themes/themes.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? imageFooter;

  const CustomCard2({
    super.key,
    required this.imageUrl,
    this.imageFooter,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.45),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 265,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (imageFooter != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(imageFooter!), // o -> (imageFooter ?? 'Sin título')
            )
        ],
      ),
    );
  }
}
