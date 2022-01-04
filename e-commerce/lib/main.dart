import 'package:flutter/material.dart';
import 'package:marvel/wayTwo.dart';
import 'package:provider/provider.dart';
import 'features/authentication/applicationState.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: (context, _) => MyApp(),
    ),
  );
}

class Homty extends StatelessWidget {
  const Homty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
