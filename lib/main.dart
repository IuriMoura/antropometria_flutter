import 'package:flutter/material.dart';
import 'package:antropometria_flutter/utils/app_routes.dart';
import 'package:antropometria_flutter/screens/historico_screen.dart';
import 'package:antropometria_flutter/screens/percentual_screen.dart';
import 'package:antropometria_flutter/screens/settings_screen.dart';
import 'package:antropometria_flutter/screens/tabs_screen.dart';
import 'package:antropometria_flutter/screens/imc_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'teste',
      theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.deepPurple, secondary: Colors.red.shade300),
          //primarySwatch: Colors.purple,
          //accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      initialRoute: '/',
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.HISTORICO: (ctx) => HistoricoScreen(),
        AppRoutes.IMC: (ctx) => ImcScreen(),
        AppRoutes.PERCENTUAL: (ctx) => PercentualScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
