import 'package:flutter/material.dart';

import '../../../wayTwo.dart';

class Box extends StatelessWidget {
  const Box({
    Key? key,
    required this.moneyType,
    required this.cash,
    required this.color,
    required this.icon,
  }) : super(key: key);

  final String moneyType;
  final String cash;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 190,
      decoration: BoxDecoration(
        border: Border.all(color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: color.withAlpha(100),
            radius: 15,
            child: Icon(icon, color: color),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cash,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: color,
                ),
              ),
              Text(
                moneyType,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                 
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
