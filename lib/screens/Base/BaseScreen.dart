import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jujuri_mobx/screens/HomeScreen/HomeScreen.dart';
import 'package:jujuri_mobx/stores/PageStore.dart';
import 'package:mobx/mobx.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final pageController = PageController();
  final pageStore = GetIt.I<PageStore>();

  @override
  initState() {
    super.initState();

    reaction((_) => pageStore.page, (page) => pageController.jumpToPage(page));
  }

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
