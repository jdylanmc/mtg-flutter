import 'package:flutter/material.dart';
import 'package:mtgflutter/core/sets/mtgset.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MtgSetWidget extends StatelessWidget {
  final MtgSet set;

  const MtgSetWidget({Key key, @required this.set}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.network(set.iconSvgUri),
                    ),
                ),
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(set.name, textAlign: TextAlign.left, textScaleFactor: 1.2,),
                        Text(set.releaseDate, textAlign: TextAlign.right, textScaleFactor: 0.9,)
                      ],
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
