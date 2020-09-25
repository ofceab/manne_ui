import 'package:flutter/material.dart';
import 'package:manne/presentation/widgets/search_bar.dart';
import 'package:manne/presentation/widgets/trends.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: SearchBar(),
        )
        // SliverList(
        //     delegate: SliverChildListDelegate([, TrendsWidget()]))
      ]),
    ));
  }
}
