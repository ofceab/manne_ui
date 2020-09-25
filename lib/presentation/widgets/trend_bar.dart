import 'package:flutter/material.dart';

class TrendBar extends StatelessWidget {
  const TrendBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
      child: Row(
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
            child: Row(
              children: [
                Text(
                  'Voir tout',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.yellow[700]),
                ),
                Icon(Icons.arrow_forward_ios,size: 13, color: Colors.yellow[700])
              ],
            ),
          )
        ],
      ),
    );
  }
}