import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? animation;
  bool expanded = true;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
      reverseDuration: Duration(milliseconds: 400),
    );
    _controller?.addStatusListener((status) {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  double heigth = 50;
  double width = 70;
  double border = 20;
  Color borderColor = Colors.black;
  Icon icon = Icon(CupertinoIcons.search, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(
          () {
            icon = icon == Icon(CupertinoIcons.search, color: Colors.white)
                ? Icon(CupertinoIcons.xmark, color: Colors.white)
                : Icon(CupertinoIcons.search, color: Colors.white);
            // expanded ? _controller?.forward() : _controller?.reverse();
            // expanded = !expanded;
            heigth = heigth == 50 ? MediaQuery.of(context).size.height : 50.0;
            width = width == 70 ? MediaQuery.of(context).size.width : 70;
            border = border == 0 ? 20 : 0;
            borderColor = borderColor == Colors.black.withOpacity(0.4)
                ? Colors.black
                : Colors.black.withOpacity(0.4);
          },
        );
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: borderColor,
          borderRadius: BorderRadius.circular(border),
        ),
        height: heigth,
        width: width,
        duration: Duration(milliseconds: 400),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
