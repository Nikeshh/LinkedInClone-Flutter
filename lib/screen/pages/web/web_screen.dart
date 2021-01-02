import 'package:flutter/material.dart';
import 'nav_bar_web.dart';
import 'package:linkedinclone/screen/pages/web/body_content.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBarWeb(),
          Expanded(
            child: BodyContent(),
          )
        ],
      ),
    );
  }
}