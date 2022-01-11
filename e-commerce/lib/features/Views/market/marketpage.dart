import 'package:flutter/material.dart';
import 'package:marvel/features/Views/cart_widget/other_items.dart';
import 'package:marvel/features/Views/cart_widget/popular_Items.dart';
import 'package:marvel/features/Views/cart_widget/trending_items.dart';
import 'package:marvel/features/Views/market/searchBar.dart';
import 'package:marvel/features/Views/profile_Page/draw.dart';
import 'package:marvel/features/utiles/items.dart';
import 'menu.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({Key? key, required this.onPressed}) : super(key: key);
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: Menu(),
      ),
      drawer: Draw(onPressed: onPressed),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: 30),
              Trend(instance: falcon),
              Popular(instance: falcon),
              Recommended(instance: falcon),
            ],
          ),
          // search bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: SearchBar(),
            ),
          )
        ],
      ),
    );
  }
}
