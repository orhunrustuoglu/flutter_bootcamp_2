import 'package:flutter/material.dart';

import 'hw_colors.dart';

class ProductTitle extends StatelessWidget {
  final Size size;
  final bool isNew;
  const ProductTitle({Key? key, required this.size, this.isNew = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Modern Armchair",
            style: TextStyle(
                fontSize: size.width / 18,
                color: mainColor,
                fontWeight: FontWeight.bold)),
        if (isNew) const SizedBox(width: 10),
        if (isNew)
          Container(
            color: secondaryColor,
            padding: const EdgeInsets.all(5),
            child: Text("NEW",
                style: TextStyle(
                    fontSize: size.width / 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          )
      ],
    );
  }
}
