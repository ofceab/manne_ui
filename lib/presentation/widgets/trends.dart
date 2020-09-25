import 'package:flutter/material.dart';
import 'package:manne/presentation/widgets/trends_list_item.dart';

class TrendsWidget extends StatefulWidget {
  @override
  _TrendsWidgetState createState() => _TrendsWidgetState();
}

class _TrendsWidgetState extends State<TrendsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Plus achétés',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
              InkWell(
                onTap: () {
                  //TODO
                },
                child: Text(
                  'Voir tout',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.yellow[700]),
                ),
              )
            ],
          ),
          _buildListView()
        ],
      ),
    );
  }

  Container _buildListView() {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => TrendsListItem()),
    );
  }
}
