import 'package:flutter/material.dart';
import 'package:helloflutter/styleguide/colors.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;
        return Stack(
          children: <Widget>[
            Container(
              color: backgroundColor,
            ),
            Positioned(
              left: -((height - width) / 2),
              bottom: height * .1,
              child: Container(
                height: height,
                width: height,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  color: gray1,
                )
              )
            ),
            Positioned(
              left: width * .25,
              top: -(width * .3),
              child: Container(
                height: width * 1.5,
                width: width * 1.5,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  color: gray2,
                )
              )
            ),
            Positioned(
              left: width * .6,
              top: -(width * .2),
              child: Container(
                height: width * .75,
                width: width * .75,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  color: gray3,
                )
              )
            ),
            Positioned(
              right: width * .7,
              bottom: (width * .1),
              child: Container(
                height: width * .75,
                width: width * .75,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  color: gray2
                )
              )
            ),
          ],
        );
      },
    );
  }
}