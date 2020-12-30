import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
            if(sizingInformation.isDesktop) {
              return WebScreen();
            } else if(sizingInformation.isTablet) {
              return TabletScreen();
            }
            return MobileScreen();
        },
    );
  }
}
