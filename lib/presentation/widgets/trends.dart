import 'package:flutter/material.dart';
import 'package:manne/presentation/widgets/trends_list_item.dart';

class TrendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => TrendsListItem()),
    );
  }
}
