import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manne/cubit/bottom_navigation_bar.dart';

import 'presentation/screens/root.dart';

// Import the firebase_core plugin

void main() {
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context)=>App()));
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottonNavigationCubit>(
            create: (context) => BottonNavigationCubit(0))
      ],
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange),
        debugShowCheckedModeBanner: false,
        home: Root(),
      ),
    );
  }
}
