import 'package:flutter/material.dart';
import 'package:manne/presentation/widgets/cart_list_item.dart';
import 'package:manne/presentation/widgets/orders_info_bar.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            collapsedHeight: 80,
            backgroundColor: Colors.white,
            title: Text(''),
            expandedHeight: 200,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.yellow[100], BlendMode.darken),
                            image: AssetImage('assets/header-image.webp'))),
                    child: Center(
                      child: Text(''),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 25,
                    child: Row(
                      children: [
                        CircleAvatar(
                          minRadius: 50,
                          maxRadius: 70,
                          child: Icon(Icons.person_outline_outlined),
                        ),
                        Container(
                          height: 40,
                          color: Colors.yellow[700],
                          child: Text('Konan Abraham Obed'),
                          )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
