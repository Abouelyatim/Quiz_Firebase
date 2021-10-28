import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp3/presentation/screens/add_question/add_question_screen.dart';
import 'package:tp3/presentation/screens/game/grame_screen.dart';
import 'package:tp3/presentation/widget/button.dart';

import '../../../theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<ThemeNotifier>(
                builder: (context,notifier,child) => SwitchListTile(
                  title: Text("Dark Mode"),
                  onChanged: (val){
                    notifier.toggleTheme();
                  },
                  value: notifier.darkTheme ,
                ),
              ),
              SizedBox(height: 40),
              Flexible(child: Button(
                buttonLabel: 'Play',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GameScreen(),
                  ),
                ),
              )),
              SizedBox(height: 20), // give it width

              Flexible(child: Button(
                buttonLabel: 'Add questions',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddQuestionScreen(),
                  ),
                ),
              )),

              SizedBox(height: 20)
            ],
          )

        ) );
  }

}