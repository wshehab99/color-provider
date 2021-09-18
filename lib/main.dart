import 'package:container_with_provider/data/provider/color_provider.dart';
import 'package:container_with_provider/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<ColorProvider>(
        create: (context) => ColorProvider(),
        child: MyHomePage(),
      ),
    );
  }
}
