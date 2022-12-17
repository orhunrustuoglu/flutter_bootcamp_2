import 'package:flutter/material.dart';
import '/colors.dart';

class MyChip extends StatelessWidget {
  final String content;
  final Function onPressed;
  const MyChip({Key? key, required this.content, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
          primary: mainColor, shape: const StadiumBorder()),
      child: Text(
        content,
        style: TextStyle(color: textColor1),
      ),
    );
  }
}
