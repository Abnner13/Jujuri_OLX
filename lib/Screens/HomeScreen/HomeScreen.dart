import 'package:flutter/material.dart';
import 'package:jujuri_mobx/Components/CustomDrawer/CustomDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: CustomDrawer(),
      ),
    );
  }
}
