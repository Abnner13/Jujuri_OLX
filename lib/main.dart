import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jujuri_mobx/screens/Base/BaseScreen.dart';
import 'package:jujuri_mobx/stores/PageStore.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    "DEkP5ILjzWcoSOszIbT8Kod5CDarbEgf8COKl8Ye",
    "https://parseapi.back4app.com/",
    clientKey: "0L0BxixcrdpeDBpHgcovZTsTxzV6f4guiPJXU1pY",
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jujuri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
