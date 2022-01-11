import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel/features/Views/profile_Page/page_view.dart';
import 'package:marvel/features/utiles/items.dart';

import '../../../wayTwo.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hooland(),
      bottomNavigationBar: Container(
        height: 60,
      ),
    );
  }
}

class Hooland extends StatefulWidget {
  const Hooland({Key? key}) : super(key: key);

  @override
  _HoolandState createState() => _HoolandState();
}

class _HoolandState extends State<Hooland> {
  PageController controller = PageController(initialPage: 0);
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          title: Text(
            'Google Account',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 26,
            ),
          ),
          snap: false,
          pinned: true,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, bottom: 20),
                  child: GestureDetector(
                    onTap: () async {},
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(prof.image),
                    ),
                  ),
                ),
                Text(
                  prof.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  prof.email,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TexButton(
                        callback: () {
                          controller.animateToPage(
                            0,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        },
                        text: 'Home',
                      ),
                      TexButton(
                        callback: () {
                          controller.animateToPage(
                            1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        },
                        text: 'card',
                      ),
                      TexButton(
                        callback: () {
                          controller.animateToPage(
                            2,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        },
                        text: 'card',
                      ),
                      TexButton(
                        callback: () {
                          controller.animateToPage(
                            3,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        },
                        text: 'fast',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          expandedHeight: MediaQuery.of(context).size.height / 3,
          backgroundColor: Colors.grey[850],
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.xmark,
              color: Colors.white,
              size: 20,
            ),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Setting Icon',
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              height: 1000,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: [Page1(), Page2(), Page3(), Page4()],
              ),
            ),
            childCount: 1,
          ),
        )
      ],
    );
  }
}

class TexButton extends StatelessWidget {
  const TexButton({
    Key? key,
    required this.callback,
    required this.text,
  }) : super(key: key);
  final String text;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
              width: 0.8),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(0),
        height: 160,
        width: MediaQuery.of(context).size.width - 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Privacy & personlization',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: (isColored
                                ? Color(0xFFf6f6f6)
                                : Color(0xFF0B0D0F))),
                      ),
                      Text(
                        'see the data in your account and choose what activity\nis saved to personalize your experience',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: (isColored
                              ? Color(0xFFf6f6f6)
                              : Color(0xFF0B0D0F)),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.security, size: 90, color: Colors.yellowAccent),
                ],
              ),
            ),
            Divider(
              color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'manage your data & personalization',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
