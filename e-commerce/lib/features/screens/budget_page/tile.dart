import 'package:flutter/material.dart';

import '../../../wayTwo.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          radius: 32,
          child: Icon(icon, color: Colors.purpleAccent),
        ),
        title: Text(
          'Transfer',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 14,
        
          ),
        ),
        subtitle: Text(
          '93 Transactions',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
        ),
      ),
    );
  }
}
