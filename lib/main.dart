import 'package:app2/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Testing App",
      theme:  ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SignInPage(),
    );
  }
}