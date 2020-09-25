import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              width: 115,
              height: 95,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/poisson-frais.jpg',
                    fit: BoxFit.cover,
                  ))),
                  SizedBox(width: 5,),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delicious Healthy Kebab',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
                Text('Quick and easy to do Whaouhh ....'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '4.5',
                            style: Theme.of(context).textTheme.caption.copyWith(),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '3.500 Fr',
                            style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 15.2
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Wrap(
                                          children: [
                                            GestureDetector(
                        onTap: () {
                          //TODO
                        },
                        child: Row(
                          children: [
                            Text(
                              'min.qte:',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '2',
                              style: Theme.of(context).textTheme.caption.copyWith(),
                            )
                          ],
                        ),
                      ),
                                          ], 
                    ),
                  ],
                ),
              ],
            ),
        ]));
  }
}
