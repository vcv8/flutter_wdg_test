import 'package:flutter/material.dart';
import 'package:flutter_wdg_test/models/models.dart';
import 'package:flutter_wdg_test/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static const initialScreen = HomeScreen();
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'ListView Tipo 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list,
      name: 'ListView Tipo 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.ads_click_outlined,
      name: 'Animated Container',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_outlined,
      name: 'Text Inputs',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.imagesearch_roller_outlined,
      name: 'Slider & Checks',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'lvbuilder',
      icon: Icons.line_style_outlined,
      name: 'ListView Builder',
      screen: const ListViewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      initialRoute: (BuildContext context) => initialScreen,
    };

    for (final MenuOption option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
