import 'package:flutter/material.dart';
import 'hw_colors.dart';

class AddToCartButton extends StatelessWidget {
  final double price;
  final Size size;
  const AddToCartButton({Key? key, required this.price, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10), //white space around the button
      height: size.height / 20,
      child: ElevatedButton(
          onPressed: () => print("Added to Cart"),
          style: ElevatedButton.styleFrom(
              primary: secondaryColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add to Cart",
                style: TextStyle(fontSize: size.width / 26),
              ),
              SizedBox(width: size.width / 26),
              Container(height: size.width / 20, width: 1, color: Colors.white),
              SizedBox(width: size.width / 26),
              Text(
                "\$ $price",
                style: TextStyle(fontSize: size.width / 26),
              ),
            ],
          )),
    );
  }
}
