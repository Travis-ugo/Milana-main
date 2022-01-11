import 'package:flutter/material.dart';
import 'package:marvel/features/Views/profile_Page/personal_profile.dart';
import 'package:marvel/features/utiles/data_color.dart';

class Page extends StatelessWidget {
  const Page({Key? key, required this.callBack, required this.contoller})
      : super(key: key);
  final PageController contoller;
  final void Function() callBack;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: contoller,
      onPageChanged: (index) {},
      scrollDirection: Axis.horizontal,
      children: [Page1(), Page2(), Page3(), Page4()],
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeCard(),
          HomeCard(),
          HomeCard(),
          HomeCard(),
        ],
      ),
      color: lightMood,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('PAge 2'),
      color: Colors.blueAccent,
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('PAge 3'),
      color: Colors.yellowAccent,
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('PAge 4'),
      color: Colors.pinkAccent,
    );
  }
}
