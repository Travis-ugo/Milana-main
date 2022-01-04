import 'package:flutter/material.dart';
import '../../../wayTwo.dart';

class DrawItems extends StatelessWidget {
  const DrawItems({
    Key? key,
    required this.icon,
    required this.text,
    required this.esp,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final IconData esp;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Icon(
                    esp,
                    color: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
