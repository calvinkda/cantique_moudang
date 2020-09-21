import 'package:flutter/material.dart';
import 'pages/home.dart';


void main() {
  runApp(MyApp());
}

// class Myapp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ləŋni',
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/home': (context) => Home(),

        //'/detail': (context) => Detail(),
        //'/research': (context) => reseach(),

      },
    );
  }
}


//class qui conditionne l'utilisation de la splash screen une seule fois


