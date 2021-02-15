import 'package:flutter/material.dart';
import 'package:jujuri_mobx/Components/CustomDrawer/PageTile.dart';

class PageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PageTile(
          label: 'Anuncios',
          iconData: Icons.list,
          onTap: () {},
          highlighted: true,
        ),
        PageTile(
          label: 'Inserir Anuncios',
          iconData: Icons.edit,
          onTap: () {},
          highlighted: false,
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {},
          highlighted: false,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {},
          highlighted: false,
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.account_box,
          onTap: () {},
          highlighted: false,
        ),
      ],
    );
  }
}
