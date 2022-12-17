import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2/homework3/hw_colors.dart';
import 'package:flutter_bootcamp_2/homework3/product_detail_item.dart';

class ProductDetails extends StatelessWidget {
  final Size size;
  final String armrestFrame, liningFabric, leg, kainBelakang, kain;
  const ProductDetails(
      {Key? key,
      required this.armrestFrame,
      required this.kain,
      required this.kainBelakang,
      required this.leg,
      required this.liningFabric,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Product Details",
              style: TextStyle(fontSize: size.width / 22),
            ),
            const Spacer(),
            TextButton(
                onPressed: () => print("see more"),
                child: Text(
                  "See More",
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: size.width / 28,
                  ),
                ))
          ],
        ),
        ProductDetailItem(title: "Armrest Frame", content: armrestFrame),
        ProductDetailItem(title: "Lining Fabric", content: liningFabric),
        ProductDetailItem(title: "Leg", content: leg),
        ProductDetailItem(title: "Kain Belakang", content: kainBelakang),
        ProductDetailItem(title: "Kain", content: kain),
      ],
    );
  }
}
