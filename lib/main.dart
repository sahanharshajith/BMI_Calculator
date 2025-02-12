import 'package:bmi_calculator/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'screens/Second_screen.dart';
import 'screens/Third_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/': (context) => HomePage(),
        '/second': (context) => SecondScreen(),
        '/third': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          return ThirdScreen(bmivalue: args['bmivalue']);
        },
      },
    );
  }
}
