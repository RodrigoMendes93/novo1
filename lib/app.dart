import 'package:flutter/material.dart';
import 'package:projeto1/routes/routes_generator.dart';

import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myHome = const MyHomePage(userName: 'Rodrigo Souza Mendes');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo', //título
      theme: ThemeData(
        //tema do aplicativo
        primarySwatch: MaterialColor(
          Colors.white.value,
          const {
            50: Colors.white,
            100: Colors.white,
            200: Colors.white,
            300: Colors.white,
            400: Colors.white,
            500: Colors.white,
            600: Colors.white,
            700: Colors.white,
            800: Colors.white,
            900: Colors.white,
          },
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: myHome,
      //Rota inicial
      initialRoute: RoutesGenerator.homePage,
      // Função geradora de rota
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}
