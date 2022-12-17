import 'package:flutter/material.dart';
import '/colors.dart';

class Chapter extends StatelessWidget {
  final int requiredTime;
  final String type, motto;
  const Chapter(
      {Key? key,
      required this.requiredTime,
      required this.type,
      required this.motto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        Text(
          "$requiredTime min",
          style: TextStyle(
              fontSize: 22, color: textColor2, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            type,
            style: TextStyle(
                fontSize: 22, color: mainColor, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          motto,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, color: textColor2),
        ),
      ]),
    );
  }
}
