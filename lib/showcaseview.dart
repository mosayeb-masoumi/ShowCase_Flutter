
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowCaseView extends StatelessWidget {

  final GlobalKey globalKey;
  final String title;
  final String description;
  final Widget child;
  final ShapeBorder? shapeBorder;

  const ShowCaseView({Key? key,
    required this.globalKey,
    required this.title,
    required this.description,
    required this.child,
    required this.shapeBorder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Showcase(
        key: globalKey,
        title: title,
        disableAnimation: false,
        showArrow: true,
        showcaseBackgroundColor: Colors.white10,
        animationDuration: Duration(milliseconds: 1000),

        // to disappear continue showing
        disposeOnTap: true,
        onTargetClick: () {
          return;
        },

        description: description,
        shapeBorder: shapeBorder,
        // textColor: Colors.green,
        titleTextStyle: TextStyle(color: Colors.white , fontSize: 20),
        descTextStyle: TextStyle(color: Colors.white),

         blurValue: 0.5,
        
        contentPadding: EdgeInsets.all(20),
        tipBorderRadius: BorderRadius.circular(10),

        // overlayColor: Colors.lightGreen,
        // overlayPadding: EdgeInsets.all(10),

        child: child);
  }
}
