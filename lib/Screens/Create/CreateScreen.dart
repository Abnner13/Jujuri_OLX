import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jujuri_mobx/Components/CustomDrawer/CustomDrawer.dart';

class CreateScreen extends StatelessWidget {
  final labelStyle = TextStyle(
    fontWeight: FontWeight.w800,
    color: Colors.grey,
    fontSize: 18,
  );
  final contentPadding = const EdgeInsets.fromLTRB(16, 10, 12, 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Anúncio'),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Titulo*',
                labelStyle: labelStyle,
                contentPadding: contentPadding,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Desrição*',
                labelStyle: labelStyle,
                contentPadding: contentPadding,
              ),
              maxLines: null,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Preço*',
                labelStyle: labelStyle,
                contentPadding: contentPadding,
                prefixText: 'R\$',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                RealInputFormatter(centavos: true),
              ],
            )
          ],
        ),
      ),
    );
  }
}
