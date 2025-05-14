import 'package:flutter/material.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Theme")),
      body: Column(children: [Text("Chane Theme")]),
    );
  }
}
