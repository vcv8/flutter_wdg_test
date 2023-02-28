import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 150;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const AboutListTile(
            icon: Icon(Icons.question_mark_outlined),
          ),
          const Divider(
            color: AppTheme.primary,
          ),
          Slider.adaptive(
            value: _sliderValue,
            min: 100,
            max: 400,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnabled
                ? (value) => setState(() => _sliderValue = value)
                : null,
          ),
          // Checkbox(
          //   value: _sliderEnabled,
          //   activeColor: AppTheme.primary,
          //   onChanged: (value) =>
          //       setState(() => _sliderEnabled = value ?? true),
          // ),
          // Switch(
          //   value: _sliderEnabled,
          //   activeColor: AppTheme.primary,
          //   onChanged: (value) => setState(() => _sliderEnabled = value),
          // ),
          // CheckboxListTile(
          //   value: _sliderEnabled,
          //   title: const Text("Habilitar slider"),
          //   activeColor: AppTheme.primary,
          //   onChanged: (value) =>
          //       setState(() => _sliderEnabled = value ?? true),
          // ),
          SwitchListTile.adaptive(
            value: _sliderEnabled,
            title: const Text("Habilitar slider"),
            activeColor: AppTheme.primary,
            onChanged: (value) => setState(() => _sliderEnabled = value),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image(
                    image: const NetworkImage(
                        "https://static.wikia.nocookie.net/featteca/images/7/73/Gato_con_Botas.png/revision/latest/scale-to-width-down/600?cb=20220713114156&path-prefix=es"),
                    width: _sliderValue,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
