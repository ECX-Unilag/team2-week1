import 'package:flutter/material.dart';
import 'package:covid_app/splashpages/firstsplash.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID-19 Info App',
      color: Color.fromRGBO(76, 20, 168, 1.0),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(76, 20, 168, 1.0),
      ),
      home: FirstSplash(),
    );
  }
}