import 'package:flutter/material.dart';

class LoadindWidget extends StatelessWidget {
  const LoadindWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
