import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jujuri_mobx/Screens/Create/CreateScreen.dart';
import 'package:jujuri_mobx/Screens/HomeScreen/HomeScreen.dart';
import 'package:jujuri_mobx/Stores/PageStore.dart';
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
          CreateScreen(),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
          Container(color: Colors.green)
        ],
      ),
    );
  }
}
