import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:jujuri_mobx/Stores/SingUpStore.dart';

import 'components/ErrorBox.dart';
import 'components/FieldTitle.dart';

class SingUpScreen extends StatelessWidget {
  final singUpStore = SingUpStore();
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
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Observer(
                      builder: (_) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: ErrorBox(message: singUpStore.error),
                        );
                      },
                    ),
                    FieldTitle(
                      title: 'Apelido  ',
                      subTitle: 'Como Aparecerá seus anúncios',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          enabled: !singUpStore.loading,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Exemplo: Joao S.',
                            isDense: true,
                            errorText: singUpStore.nameError,
                          ),
                          onChanged: singUpStore.setName,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'E-mail  ',
                      subTitle: 'Enviaremos um e-mail de confirmação',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          enabled: !singUpStore.loading,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Exemplo: Joao@Gmail.com',
                            isDense: true,
                            errorText: singUpStore.emailError,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          onChanged: singUpStore.setEmail,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'Celular  ',
                      subTitle: 'Proteja sua conta',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          enabled: !singUpStore.loading,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Exemplo: (99) 99999-9999',
                            isDense: true,
                            errorText: singUpStore.phoneError,
                          ),
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter()
                          ],
                          onChanged: singUpStore.setPhone,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'Senha  ',
                      subTitle: 'use letras, numeros, e caracteres especiais',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          enabled: !singUpStore.loading,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            isDense: true,
                            errorText: singUpStore.pass1Error,
                          ),
                          obscureText: true,
                          onChanged: singUpStore.setpass1,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'Confirmar Senha  ',
                      subTitle: 'Repita a Senha',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          enabled: !singUpStore.loading,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            isDense: true,
                            errorText: singUpStore.pass2Error,
                          ),
                          obscureText: true,
                          onChanged: singUpStore.setpass2,
                        );
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 12),
                          height: 40,
                          child: RaisedButton(
                            color: Colors.orange,
                            disabledColor: Colors.orange.withAlpha(120),
                            child: singUpStore.loading
                                ? CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  )
                                : Text('CADASTE-SE'),
                            textColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: singUpStore.singUpPressed,
                          ),
                        );
                      },
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
      ),
    );
  }
}
