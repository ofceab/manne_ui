import 'package:flutter/material.dart';

class TrendsListItem extends StatelessWidget {
  const TrendsListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                height: 170,
                child: Image.asset(
                  'assets/poisson-frais.jpg',
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(.2),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 16,
              right: 16,
              child: Container(
                height: 100,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delicious Healthy Kebab',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                        ),
                        Text('Quick and easy to do Whaouhh ....'),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '4.5',
                                    style: Theme.of(context).textTheme.caption.copyWith(
                                      fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                                                        GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.monetization_on_rounded,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '3.500',
                                    style: Theme.of(context).textTheme.caption.copyWith(
                                      fontSize: 17
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                //TODO
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'min.qte:',
                                    style: Theme.of(context).textTheme.caption.copyWith(
                                    fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(width: 3,),
                                  Text(
                                    '2',
                                    style: Theme.of(context).textTheme.caption.copyWith(
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
