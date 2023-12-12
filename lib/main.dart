import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/controllers/skip_screen_controller.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/modules/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SkipScreenController()),
        ChangeNotifierProvider(create: (context) => HomeController()),
      ],
      child: GameLeven(),
    ),
  );
}

class GameLeven extends StatefulWidget {
  const GameLeven({super.key});

  @override
  State<GameLeven> createState() => _GameLevenState();
}

class _GameLevenState extends State<GameLeven> {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<HomeController>(context).bestSaleProductsData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: SplashScreen(),
    );
  }
}
