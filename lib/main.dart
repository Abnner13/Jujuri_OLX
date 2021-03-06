import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jujuri_mobx/Screens/Base/BaseScreen.dart';
import 'package:jujuri_mobx/Stores/PageStore.dart';
import 'package:jujuri_mobx/Stores/UserManegerStore.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(UserManegerStore());
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(elevation: 0),
        cursorColor: Colors.orange,
      ),
      home: BaseScreen(),
    );
  }
}
