import 'package:flutter/material.dart';
import 'package:marvel/features/authentication/applicationState.dart';
import 'package:provider/provider.dart';
import '../../wayTwo.dart';
import 'applicationLoginState.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: (isColored ? darkMood : lightMood),

      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
      body: Consumer<ApplicationState>(
        builder: (context, appState, _) => Authentication(
          email: appState.email,
          loginState: appState.loginState,
          startLoginFlow: appState.startLoginFlow,
          verifyEmail: appState.verifyEmail,
          signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
          cancelRegistration: appState.cancelRegistration,
          registerAccount: appState.registerAccount,
          signOut: appState.signOut,
        ),
      ),
    );
  }
}
