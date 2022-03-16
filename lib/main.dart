import 'package:flutter/material.dart';
import 'package:flutter_app/screen/background_image.dart';
import 'package:flutter_app/screen/flutter_layout.dart';
import 'package:flutter_app/screen/maps/index.dart';
import '/screen/todoScreen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      initialRoute:"/",
      routes: {
        '/' : (context) => const FlutterLayout(),
        '/background-image': (context) => const BackgroundImage(),
        '/todo-screen' : (context) => TodoScreen(),
        '/maps' : (context) => const MapSample()
      },
    );
  }
}
