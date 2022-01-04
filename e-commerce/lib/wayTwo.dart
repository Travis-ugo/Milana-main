import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/authentication/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: Lost(),
    );
  }
}

class Lost extends ConsumerWidget {
  const Lost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tahn',
      theme: ThemeData(
        primaryColor: Color(0xFFf6f6f6),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
              ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

//hunxwihcd

class MoodL$B extends StatefulWidget {
  const MoodL$B({Key? key}) : super(key: key);

  @override
  _MoodL$BState createState() => _MoodL$BState();
}

class _MoodL$BState extends State<MoodL$B> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        CupertinoIcons.moon_circle_fill,
        color: lightMood,
      ),
      onPressed: () {
        // _colorSwitcher(context);
        print('collor change');
        setState(() {
          isColored = isColored == true ? false : true;
        });
      },
    );
  }
}

Color backGroundColor = lightMood;

Color lightMood = Color(0xFFf6f6f6);
Color darkMood = Color(0xFF303030);
bool isColored = true;

class ColorNotifier extends ChangeNotifier {
  bool get value => isColored;

  void switchValue() {
    isColored = isColored == true ? false : true;
    notifyListeners();
  }
}

void _colorSwitcher(BuildContext context) {
  context.read(colorProvider).switchValue();
}

final colorProvider = ChangeNotifierProvider((ref) => ColorNotifier());


// Todo 
// splash screen 
// firebase stuff
// - 
// 
