import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel/features/screens/budget_page/tile.dart';
import '../../../wayTwo.dart';
import 'box_label.dart';
import 'items_B.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Icon(
            Icons.help,
            size: 25,
            color: Colors.white,
          ),
        ],
        leading: Icon(
          CupertinoIcons.xmark,
          size: 20,
          color: Colors.white,
        ),
        title: Text(
          'Budget',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.grey[800],
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: new Icon(
      //         Icons.people,
      //         color: Colors.grey,
      //       ),
      //       label: 'Second',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: new Icon(
      //         Icons.people,
      //         color: Colors.grey,
      //       ),
      //       label: 'Second',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: new Icon(
      //         Icons.people,
      //         color: Colors.grey,
      //       ),
      //       label: 'Second',
      //     ),
      //   ],
      // ),
      body: Budget(),
    );
  }
}

class Budget extends StatelessWidget {
  const Budget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 2);

    return PageView.builder(
      controller: controller,
      itemCount: budget.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    budget[index - 1].month,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    budget[index].month,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box(
                    cash: budget[index].moneyIn,
                    color: Colors.greenAccent,
                    moneyType: 'Money In',
                    icon: Icons.add,
                  ),
                  Box(
                    cash: budget[index].moneyOut,
                    color: Colors.redAccent,
                    moneyType: 'Money spent',
                    icon: Icons.subdirectory_arrow_right_sharp,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box(
                    cash: budget[index].balance,
                    color: Colors.purpleAccent,
                    moneyType: 'Balance',
                    icon: Icons.games,
                  ),
                  Box(
                    cash: 'No Budget  >',
                    color: Colors.white,
                    moneyType: 'create Budget',
                    icon: Icons.pie_chart,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.pie_chart,
                      color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
                      size: 35,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create a Budget',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Create a smart budget now to manage your\nfinances better.',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
                    size: 35,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'All Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tile(icon: Icons.send),
                  Tile(icon: Icons.save),
                  Tile(icon: Icons.phone_iphone),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
