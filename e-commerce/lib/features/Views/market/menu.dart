import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:marvel/features/Views/cart_widget/cart_details.dart';
import 'package:marvel/features/utiles/items.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  CollectionReference users =
      FirebaseFirestore.instance.collection('guestbook');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'full_name': 'kingsley', // John Doe
          'company': 'companyman', // Stokes and Sons
          'age': 24, // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.height,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        backgroundImage: AssetImage(prof.image),
                        radius: 17,
                      ),
                    ),
                  ),
                  CartCounter(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: addUser,
                    child: Text(
                      'Coats',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Text(
                    'Dresses',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    'Jersey',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    'Pants',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
