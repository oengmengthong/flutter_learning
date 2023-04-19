import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/home_screen.dart';
import 'package:flutter_widgets/utils/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeScreen(),
    );
  }
}