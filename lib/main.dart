import 'package:flutter/material.dart';

import 'presentation/screens/root.dart';

// Import the firebase_core plugin

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: Root(),
    );
  }
}
