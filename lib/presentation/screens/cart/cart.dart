import 'package:flutter/material.dart';
import 'package:manne/presentation/widgets/cart_list_item.dart';
import 'package:manne/presentation/widgets/orders_info_bar.dart';

class Cart extends StatelessWidget {
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
                            image: AssetImage('assets/orange-imge.jpg'))),
                    child: Center(
                      child: Text('sdgdf'),
                    ),
                  ),
                  OrderInfoBar(),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return CartListItem();
            }),
          )
        ],
      ),
    );
  }
}
