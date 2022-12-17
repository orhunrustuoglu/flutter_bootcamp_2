import 'package:flutter/material.dart';
import '/homework3/add_to_cart_button.dart';
import '/homework3/product_details.dart';
import '/homework3/product_title.dart';
import '/homework3/rating_meter.dart';
import 'hw_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //the design is inspired from:
    //https://www.uplabs.com/posts/ikea-redesign-concept-furniture
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //for Android
        title: Text(
          "Furniture Store",
          style: TextStyle(fontFamily: "Pacifico", fontSize: size.width / 16),
        ),
        backgroundColor: mainColor,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset("images/furniture_image.jpeg"),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(children: [
                  ProductTitle(size: size, isNew: true),
                  RatingMeter(size: size, rating: 4, raterCount: 147),
                  const SizedBox(height: 15),
                  ProductDetails(
                      armrestFrame:
                          "Particle board, Plywood, Laminated veener lumber, Polyurethane foam 25 kg/cubic meter.",
                      liningFabric: "100% polypropylene.",
                      leg: "Polypropylene plastic.",
                      kainBelakang: "100% poliester (100% daur ulang).",
                      kain: "80% katun, 20% poliester (min 20% recycled).",
                      size: size),
                  const Spacer(),
                  AddToCartButton(
                    price: 115.00,
                    size: size,
                  )
                ])),
          ),
        ],
      )),
    );
  }
}
