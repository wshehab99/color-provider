import 'package:container_with_provider/data/provider/color_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 200,
            color: colorProvider.color1,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: colorProvider.color2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    colorProvider.changeColor();
                  },
                  child: Text('Change Color')),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    colorProvider.resetColor();
                  },
                  child: Text('Reset Colors')),
            ],
          )
        ],
      )),
    );
  }
}
