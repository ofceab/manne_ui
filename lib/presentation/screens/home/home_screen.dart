import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manne/cubit/bottom_navigation_bar.dart';
import 'package:manne/presentation/screens/account/account.dart';
import 'package:manne/presentation/screens/cart/cart.dart';
import 'package:manne/presentation/widgets/ProductsBar.dart';
import 'package:manne/presentation/widgets/product_list_item.dart';
import 'package:manne/presentation/widgets/search_bar.dart';
import 'package:manne/presentation/widgets/trend_bar.dart';
import 'package:manne/presentation/widgets/trends.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  CustomScrollView _buildMarketPlace(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        collapsedHeight: 100,
        floating: true,
        pinned: true,
        centerTitle: true,
        title: Text(
            ''.toUpperCase(),
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w800),
          ),
        expandedHeight: 170,
        backgroundColor: Colors.transparent,
        flexibleSpace: SearchBar(),
      ),
      SliverToBoxAdapter(
        child: TrendBar(),
      ),
      SliverToBoxAdapter(
        child: TrendsWidget(),
      ),
      SliverToBoxAdapter(
        child: ProductBar(),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ProductListItem();
        }, childCount: 10),
      ),
    ]);
  }

  Widget _buildScreenAccordingToBottomNavigation(
      BuildContext context, int index) {
    if (index == 0) {
      return _buildMarketPlace(context);
    } else if (index == 1) {
      return Cart();
    } else if (index == 2) {
      return Account();
    }
    return null;
  }

  Widget _buildBottomNavigationBar(
      BottonNavigationCubit cubit, BuildContext context) {
    return BlocBuilder<BottonNavigationCubit, int>(
      builder: (context, index) {
        return BottomNavigationBar(
          selectedItemColor: Colors.yellow[700],
          currentIndex: index,
          onTap: (int index) =>
              _handleBottomNavigationAction(cubit, index, context),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined),
              label: 'Marché',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Commandes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'Compte',
            ),
          ],
        );
      },
    );
  }

  ///Handle onNavigationButtonAction
  void _handleBottomNavigationAction(
      BottonNavigationCubit bottomNavigationCubit,
      int index,
      BuildContext context) {
    //Push the index to the bottomNavigationCubit stream
    bottomNavigationCubit.pushToAnotherUIScreen(index);
  }

  @override
  Widget build(BuildContext context) {
    BottonNavigationCubit _bottomNavigationCubit =
        BlocProvider.of<BottonNavigationCubit>(context);
    return Scaffold(
        bottomNavigationBar:
            _buildBottomNavigationBar(_bottomNavigationCubit, context),
        body: SafeArea(
          child: BlocBuilder<BottonNavigationCubit, int>(
            builder: (context, index) {
              return _buildScreenAccordingToBottomNavigation(context, index);
            },
          ),
        ));
  }
}
