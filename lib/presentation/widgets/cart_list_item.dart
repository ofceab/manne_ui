import 'package:flutter/material.dart';

class CartListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.green[100],
                  offset: Offset(1.2, 0.5))
            ]),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Image.asset(
                          'assets/header-image.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vos commandes',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    fontSize: 16.3,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Verifier et finaliser vos achats ....'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.line_weight_sharp,
                            color: Colors.yellow[700],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'quantité',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontWeight: FontWeight.w800, fontSize: 17),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '3',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: Colors.green, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.monetization_on_rounded,
                            color: Colors.yellow[700],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Montant Total:',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontWeight: FontWeight.w800, fontSize: 17),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '25.000 CFA',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: Colors.green, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              child: CircleAvatar(
                backgroundColor: Colors.yellow[100],
                radius: 15,
                child: Icon(
                  Icons.close,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ));
  }
}
