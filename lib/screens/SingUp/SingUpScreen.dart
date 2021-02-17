import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jujuri_mobx/screens/Login/LoginScreen.dart';
import 'package:jujuri_mobx/screens/SingUp/components/FieldTitle.dart';
import 'package:brasil_fields/brasil_fields.dart';

class SingUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sing Up'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 8,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FieldTitle(
                    title: 'Apelido  ',
                    subTitle: 'Como Aparecerá seus anúncios',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Exemplo: Joao S.',
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  FieldTitle(
                    title: 'E-mail  ',
                    subTitle: 'Enviaremos um e-mail de confirmação',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Exemplo: Joao@Gmail.com',
                      isDense: true,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                  ),
                  const SizedBox(height: 16),
                  FieldTitle(
                    title: 'Celular  ',
                    subTitle: 'Proteja sua conta',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Exemplo: (99) 99999-9999',
                      isDense: true,
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter()
                    ],
                  ),
                  const SizedBox(height: 16),
                  FieldTitle(
                    title: 'Senha  ',
                    subTitle: 'use letras, numeros, e caracteres especiais',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  FieldTitle(
                    title: 'Confirmar Senha  ',
                    subTitle: 'Repita a Senha',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    obscureText: true,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 12),
                    height: 40,
                    child: RaisedButton(
                      color: Colors.orange,
                      child: Text('CADASTE-SE'),
                      textColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                    ),
                  ),
                  Divider(color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Já tem uma conta?  ',
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: Navigator.of(context).pop,
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.purple,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
