import 'package:flutter/material.dart';
import 'package:jujuri_mobx/Components/CustomDrawer/CustomDrawerHeader.dart';
import 'package:jujuri_mobx/Components/CustomDrawer/PageSection.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              CustomDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
