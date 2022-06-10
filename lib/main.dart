import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scroll_disign/pages/coustom.dart';
import 'package:scroll_disign/pages/home_screen.dart';
import 'package:scroll_disign/pages/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: 'Custom',
      theme: ThemeData.dark(),
      routes: {
        'home': (_) => const HomeScreen(),
        'test': (_) => const TestScreen(),
        'Custom': (_) => const CoustomScreen()
      },
    );
  }
}
