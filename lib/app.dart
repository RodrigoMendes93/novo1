import 'package:flutter/material.dart';
import 'package:projeto1/routes/routes_generator.dart';

import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myHome = const MyHomePage(title: 'Flutter Demo Home Page');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo', //título
      theme: ThemeData(
        //tema do aplicativo
        primarySwatch: Colors.blue,
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
