import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jujuri_mobx/Components/CustomDrawer/PageTile.dart';
import 'package:jujuri_mobx/stores/PageStore.dart';

class PageSection extends StatelessWidget {
  final pageStore = GetIt.I<PageStore>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PageTile(
          label: 'Anuncios',
          iconData: Icons.list,
          onTap: () {
            pageStore.setPage(0);
          },
          highlighted: pageStore.page == 0,
        ),
        PageTile(
          label: 'Inserir Anuncios',
          iconData: Icons.edit,
          onTap: () {
            pageStore.setPage(1);
          },
          highlighted: pageStore.page == 1,
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {
            pageStore.setPage(2);
          },
          highlighted: pageStore.page == 2,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {
            pageStore.setPage(3);
          },
          highlighted: pageStore.page == 3,
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.account_box,
          onTap: () {
            pageStore.setPage(4);
          },
          highlighted: pageStore.page == 4,
        ),
      ],
    );
  }
}
