import 'package:flutter/material.dart';

class FieldTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const FieldTitle({Key key, this.title, this.subTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 3, bottom: 4),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          children: <Widget>[
            Text(
              '$title',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '$subTitle',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ));
  }
}
