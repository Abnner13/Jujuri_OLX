import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  const PageTile(
      {Key key, this.label, this.iconData, this.onTap, this.highlighted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: highlighted ? Colors.purple : Colors.black54,
        ),
      ),
      leading:
          Icon(iconData, color: highlighted ? Colors.purple : Colors.black54),
      onTap: onTap,
    );
  }
}
