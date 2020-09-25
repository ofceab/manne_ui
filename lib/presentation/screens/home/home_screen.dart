import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manne/cubit/bottom_navigation_bar.dart';
import 'package:manne/presentation/widgets/ProductsBar.dart';
import 'package:manne/presentation/widgets/product_list_item.dart';
import 'package:manne/presentation/widgets/search_bar.dart';
import 'package:manne/presentation/widgets/trend_bar.dart';
import 'package:manne/presentation/widgets/trends.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  CustomScrollView _buildMarketPlace() {
    return CustomScrollView(slivers: [
      SliverAppBar(
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

  Widget _buildScreenAccordingToBottomNavigation(int index) {
    if (index == 0) {
      return _buildMarketPlace();
    } else if (index == 1) {
      return Center(
        child: Text('Commandes'),
      );
    } else if (index == 2) {
      return Center(
        child: Text('Person'),
      );
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
              return _buildScreenAccordingToBottomNavigation(index);
            },
          ),
        ));
  }
}
