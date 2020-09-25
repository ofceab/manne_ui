import 'package:flutter/material.dart';

class OrderInfoBar extends StatelessWidget {
  @override
  Positioned build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 16,
      right: 16,
      child: Container(
        height: 100,
        child: Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vos commandes',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontSize: 16.3,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                Text('Verifier et finaliser vos achats ....'),
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
                            Icons.monetization_on_rounded,
                            color: Colors.yellow[700],
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Montant Total:',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17),
                          ),
                          SizedBox(width: 7,),
                          Text(
                            '25.000 CFA',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(
                                  color: Colors.green,
                                  fontSize: 17),
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
    );
  }
}
