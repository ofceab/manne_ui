import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manne/presentation/widgets/loading_widget.dart';

import 'error/error_screen.dart';
import 'home/home_screen.dart';

class Root extends StatelessWidget {
  // Create the initilization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return ErrorScreen();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return HomeScreen();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return LoadindWidget();
      },
    );
  }
}
