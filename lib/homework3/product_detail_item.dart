import 'package:flutter/material.dart';
import '/homework3/hw_colors.dart';

class ProductDetailItem extends StatelessWidget {
  final String title, content;
  const ProductDetailItem(
      {Key? key, required this.content, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title: ",
            style: TextStyle(color: textColor2, fontWeight: FontWeight.bold),
          ),
          Flexible(
            child: Text(
              content,
              style: TextStyle(color: textColor2),
            ),
          )
        ],
      ),
    );
  }
}
