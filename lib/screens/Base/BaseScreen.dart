import 'package:flutter/material.dart';
import 'package:jujuri_mobx/screens/HomeScreen/HomeScreen.dart';

class BaseScreen extends StatelessWidget {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          Container(color: Colors.yellow),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
          Container(color: Colors.green)
        ],
      ),
    );
  }
}
