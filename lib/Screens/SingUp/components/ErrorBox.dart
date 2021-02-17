import 'package:flutter/material.dart';

class ErrorBox extends StatelessWidget {
  String message;
  ErrorBox({this.message});
  @override
  Widget build(BuildContext context) {
    if (message == null)
      return Container();
    else
      return Container(
        padding: const EdgeInsets.all(8),
        color: Colors.red,
        child: Row(
          children: <Widget>[
            Icon(Icons.error_outline, color: Colors.white, size: 40),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                'Oops: $message. Por favor tente novamente',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
      );
  }
}
