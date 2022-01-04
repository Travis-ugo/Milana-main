import 'package:flutter/material.dart';
import 'package:marvel/features/utiles/data.dart';
import 'package:marvel/features/utiles/items.dart';

import 'package:marvel/features/screens/cart_widget/cart_details.dart';

class Popular extends StatelessWidget {
  final List<Items> instance;
  const Popular({Key? key, required this.instance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 30, bottom: 15),
          child: Text(
            'Recommended',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          height: 210,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: falcon.length,
            itemBuilder: (BuildContext context, int index) {
              return Hero(
                tag: falcon[index].description,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => D3tail(item: instance[index]),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(0),
                      height: 200,
                      width: 160,
                      child: Card(
                        elevation: 0.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(falcon[index].image),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
