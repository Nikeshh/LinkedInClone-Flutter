import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:linkedinclone/screen/pages/web/widgets/left_side_widget.dart';
import 'package:linkedinclone/screen/pages/web/widgets/right_side_widget.dart';
import 'package:linkedinclone/screen/pages/web/widgets/center_widget.dart';

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Stack(
              children: [
                Positioned(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      child: LeftSideWidget(
                        sizingInformation: sizingInformation,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 240,
                  bottom: 0,
                  top: 0.0,
                  child: SingleChildScrollView(
                    child: CenterWidget(
                      sizingInformation: sizingInformation,
                    ),
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SingleChildScrollView(
                      child: RightSideWidget(
                        sizingInformation: sizingInformation,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
