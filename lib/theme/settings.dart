import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/theme/themeData.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          centerTitle: true,
          title: Text("SETTINGS"),
        ),
        body: Container(

            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12)
            ),
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode"),
                CupertinoSwitch(value:
                Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
                    onChanged: (value)=>
                        Provider.of<ThemeProvider>(context, listen: false).toggleTheme())

              ],
            ),
           ),
        );
   }
}