import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/themes/themes.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

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
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2014/10/26/14143477760117.jpg'),
            width: double.infinity,
            height: 265,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Cabezera de noticia'),
          )
        ],
      ),
    );
  }
}
