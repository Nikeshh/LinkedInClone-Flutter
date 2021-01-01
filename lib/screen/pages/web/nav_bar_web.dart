import 'package:flutter/material.dart';
import 'package:linkedinclone/screen/widgets/style/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarWeb extends StatefulWidget {
  @override
  _NavBarWebState createState() => _NavBarWebState();
}

class _NavBarWebState extends State<NavBarWeb> {

  List<bool> _selectedButton = [true, false, false, false, false, false, false];
  List<bool> _hoverButton = [false, false, false, false, false, false, false];
  bool _isShowUnderLine = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: sizingInformation.localWidgetSize.width/13),
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          height: 50,
          width: sizingInformation.screenSize.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _rowSearchIconWidget(sizingInformation),
            ],
          ),
        );
      },
    );
  }
  
  Widget _rowSearchIconWidget(SizingInformation sizingInformation) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset("assets/icons/logo_1.png"),
          ),
          SizedBox(width: 8),
          Container(
            height: 35,
            width: sizingInformation.localWidgetSize.width/5,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          )
        ],
      ),
    );
  }
}
