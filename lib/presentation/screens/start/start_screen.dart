import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp3/presentation/screens/home/home_screen.dart';

import '../../../theme.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: notifier.darkTheme ? dark : light,
            home: Scaffold(
              body: SafeArea(
                child: HomeScreen(),
              ),
            ),
          );
        } ,
      ),
    );
  }

}