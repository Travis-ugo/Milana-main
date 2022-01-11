import 'package:flutter/material.dart';
import 'package:marvel/features/Views/budget_page/budget.dart';
import 'package:marvel/features/Views/profile_Page/personal_profile.dart';
import 'package:marvel/features/Views/profile_Page/profile.dart';
import 'package:marvel/features/utiles/items.dart';

class Draw extends StatelessWidget {
  const Draw({Key? key, required this.onPressed}) : super(key: key);
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 19,
                      backgroundImage: AssetImage(
                        prof.image,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          prof.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'local seller',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Divider(),
                DrawItems(
                  icon: Icons.person,
                  text: 'Profile',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonalProfile(),
                      ),
                    );
                  },
                ),
                DrawItems(
                  icon: Icons.bar_chart,
                  text: 'My Stats',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {},
                ),
                DrawItems(
                  icon: Icons.pie_chart,
                  text: 'Budgets',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BudgetPage(),
                      ),
                    );
                  },
                ),
                DrawItems(
                  icon: Icons.ballot_rounded,
                  text: 'Dispute',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {},
                ),
                SizedBox(height: 20),
                Divider(),
                DrawItems(
                  icon: Icons.settings,
                  text: 'Settings',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {},
                ),
                Divider(),
                SizedBox(height: 20),
                DrawItems(
                  icon: Icons.help,
                  text: 'Help',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {},
                ),
                DrawItems(
                  icon: Icons.support,
                  text: 'Support',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: () {},
                ),
                DrawItems(
                  icon: Icons.people_alt_sharp,
                  text: 'logOut',
                  esp: Icons.arrow_right_alt_sharp,
                  onPressed: onPressed,
                ),
              ],
            ),
            Text(
              'version 1.37.1(345)',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
