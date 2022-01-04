import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marvel/features/screens/market/bottom_drawer.dart';
import 'package:marvel/features/utiles/data.dart';

class D3tail extends StatelessWidget {
  final Items item;
  const D3tail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: item.image,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(item.image),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PreferredSize(
                  preferredSize: Size.fromHeight(130.0),
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.chevron_left_outlined, size: 30),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          // IconButton
                          CartCounter(),
                        ],
                      ),
                    ),
                  ),
                ),
                // Purchase container
                BottomDrawer(item: item),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CounterNotifier extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void incrementValue() {
    _value++;
    notifyListeners();
  }
}

void _incrementCounter(BuildContext context) {
  context.read(counterProvider).incrementValue();
}

final counterProvider = ChangeNotifierProvider((ref) => CounterNotifier());

class CartCounter extends StatelessWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          IconButton(
            icon: Icon(Icons.shopping_cart, size: 25),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppinCart(),
                ),
              );
            },
          ),
          Positioned(
            right: 8,
            top: 7,
            child: Consumer(
              builder: (context, watch, child) {
                final counterNotifier = watch(counterProvider);
                return CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red[100],
                  child: Text(
                    '${counterNotifier.value}',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _incrementCounter(context);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 50,
          color: Colors.grey[800],
          width: MediaQuery.of(context).size.width - 100,
          child: Center(
            child: Text(
              'Add To cart',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShoppinCart extends StatelessWidget {
  const ShoppinCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [CartCounter(), AddToCart()],
      ),
    );
  }
}