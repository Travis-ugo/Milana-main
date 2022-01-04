import 'package:flutter/material.dart';
import 'package:marvel/features/utiles/data.dart';
import 'package:marvel/features/utiles/items.dart';
import 'package:marvel/features/screens/cart_widget/cart_details.dart';

class Trend extends StatelessWidget {
  final List<Items> instance;
  const Trend({Key? key, required this.instance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: falcon.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 270,
                  width: 200,
                  child: Card(
                    elevation: 0.0,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 270,
                          width: 200,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      D3tail(item: instance[index]),
                                ),
                              );
                            },
                            child: Hero(
                              tag: falcon[index].image,
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(falcon[index].image),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Discount(
                            height: 25,
                            widgth: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        falcon[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 100),
                      Text(
                        falcon[index].price,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget size({required String size}) {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child: Container(
      height: 30,
      width: 30,
      child: Center(
        child: Text(
          size,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[300],
      ),
    ),
  );
}

Widget fav() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '...',
          style: TextStyle(
            fontSize: 50,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

class Discount extends StatelessWidget {
  const Discount({Key? key, required this.height, required this.widgth})
      : super(key: key);
  final double height;
  final double widgth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.grey[600],
        height: height,
        width: widgth,
        child: Center(
          child: Text(
            '-30%',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 9,
            ),
          ),
        ),
      ),
    );
  }
}
