import 'package:flutter/material.dart';
import 'hw_colors.dart';

class RatingMeter extends StatelessWidget {
  final int rating, raterCount;
  final Size size;

  const RatingMeter(
      {Key? key,
      required this.rating,
      required this.raterCount,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loopList = [1, 2, 3, 4, 5]; //to be used to dynamically show star count

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 15),
        Text(
          rating.toString(),
          style: TextStyle(
            color: secondaryColor,
            fontSize: size.width / 24,
          ),
        ),
        const SizedBox(width: 5),
        ...loopList
            .map((e) => Icon(
                  e > rating ? Icons.star_outline : Icons.star,
                  color: secondaryColor,
                  size: size.width / 20,
                ))
            .toList(),
        const SizedBox(width: 10),
        Text(
          "($raterCount)",
          style: TextStyle(
            color: textColor2,
            fontSize: size.width / 35,
          ),
        )
      ],
    );
  }
}
