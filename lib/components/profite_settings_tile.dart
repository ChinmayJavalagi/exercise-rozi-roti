import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String fieldName;
  final IconData iconData;
  final Color? fieldColor;

  SettingsTile({
    required this.fieldName,
    required this.iconData,
    this.fieldColor,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = fieldColor ?? Colors.black;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(iconData, color: iconColor), // Icon widget for the passed icon
            SizedBox(width: 10), // Adjust the space between the icon and the text
            Text(
              fieldName,
              style: TextStyle(fontFamily: "DMSans", color: fieldColor),
            ),
            Expanded(child: SizedBox()), // This expands the space between text and arrow icon
            Icon(Icons.arrow_forward_ios, color: fieldColor != null? fieldColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
