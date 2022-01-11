import 'package:flutter/material.dart';
import 'package:marvel/features/Views/cart_widget/cart_details.dart';
import 'package:marvel/features/Views/cart_widget/trending_items.dart';
import 'package:marvel/features/utiles/data.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({Key? key, required this.item}) : super(key: key);
  final Items item;

  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

bool showBotomMenu = false;
double threshold = 100;

class _BottomDrawerState extends State<BottomDrawer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanEnd: (details) {
        if (details.velocity.pixelsPerSecond.dy > threshold) {
          this.setState(
            () {
              showBotomMenu = false;
            },
          );
        } else if (details.velocity.pixelsPerSecond.dy < -threshold) {
          this.setState(
            () {
              showBotomMenu = true;
            },
          );
        }
        debugPrint(details.velocity.pixelsPerSecond.dy.toString());
      },
      child: AnimatedContainer(
        height: (showBotomMenu) ? MediaQuery.of(context).size.height / 2 : 150,
        duration: Duration(milliseconds: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            fav(),
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              child: AnimatedContainer(
                height: (showBotomMenu)
                    ? MediaQuery.of(context).size.height / 2 - 120
                    : 90,
                width: MediaQuery.of(context).size.width,
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                color: Colors.white,
                child: (showBotomMenu)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 4,
                              width: 50,
                              color: Colors.grey[800],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 25,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.item.name,
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      widget.item.price,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Your Size',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        size(size: 'S'),
                                        size(size: 'M'),
                                        size(size: 'L'),
                                        size(size: 'XL'),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[800],
                                      radius: 12,
                                    ),
                                    SizedBox(height: 10),
                                    CircleAvatar(
                                      backgroundColor: Colors.yellowAccent,
                                      radius: 12,
                                    ),
                                    SizedBox(height: 10),
                                    CircleAvatar(
                                      backgroundColor: Colors.pink[300],
                                      radius: 12,
                                    ),
                                    SizedBox(height: 10),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      radius: 12,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // AddToCart
                          AddToCart(),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 4,
                              width: 50,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 10),
                          AddToCart(),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
