import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String fieldName;
  final IconData iconData;

  SettingsTile({
    required this.fieldName,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(iconData), // Icon widget for the passed icon
            SizedBox(width: 10), // Adjust the space between the icon and the text
            Text(fieldName),
            Expanded(child: SizedBox()), // This expands the space between text and arrow icon
            Icon(Icons.arrow_forward_ios, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
