import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors. yellow[700],
        onPressed: (){
          //TODO
        },
      ),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          pinned: true,
          collapsedHeight: 175,
          expandedHeight: 220,
          flexibleSpace: Container(
            height: 220,
            child: Stack(
              children: [
                Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ))),
                buildPositioned(context),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              leading: Icon(
                Icons.watch_later_outlined,
              ),
              subtitle: Text(
                'nombre d\'article achétés',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              title: Text(
                '21 Articles',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.black54),
              ),
            );
          }, childCount: 10),
        )
      ],
    ));
  }

  Positioned buildPositioned(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 0,
      right: 0,
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          height: 170,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(15)),
                        width: MediaQuery.of(context).size.width * .3,
                        height: 120,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(
                                  'Konan Abraham Kouassi Obed',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontSize: 16.3,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                subtitle: Text(
                                  'Nom et Prenoms',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black54),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
