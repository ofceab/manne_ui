import 'package:flutter/material.dart';

class TrendsListItem extends StatelessWidget {
  const TrendsListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 300,
        child: Stack(
          children: [
            Image.asset(
              'assets/header-image.webp',
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80,
                  child: Column(
                    children: [
                      Text(
                        'Delicious Healthy Kebab',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      Text('Quick and easy to do Whaouhh ....'),
                      Row(
                        children: [
                          RaisedButton.icon(
                              elevation: 0.0,
                              onPressed: () {},
                              icon: Icon(Icons.star),
                              label: Text(
                                '4.3',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                              )),
                          RaisedButton.icon(
                              elevation: 0.0,
                              onPressed: () {},
                              icon: Text('min .Quantity'),
                              label: Text(
                                '4',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                              )),
                          RaisedButton.icon(
                              elevation: 0.0,
                              onPressed: () {},
                              icon: Icon(Icons.money),
                              label: Text(
                                '4.500 FCFA',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                              ))
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
