import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_appilcation_ui/widget/size_button.dart';

import '../categories.dart';

class ItemDetail extends StatefulWidget {
  final int id;
  final String image;
  final Categories category;
  final String brand;
  final double price;

  ItemDetail({
    super.key,
    required this.id,
    required this.image,
    required this.category,
    required this.brand,
    required this.price,
  });

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

String? selectedSize;

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: widget.id,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 10,
                  color: Colors.grey,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(child: Icon(Icons.arrow_back_ios)),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_border,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.9),
                          Colors.black.withOpacity(.0),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Sneakers",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Size",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizeButton(
                              size: "40",
                              isSelected: selectedSize == "40",
                              function: () {
                                setState(() {
                                  selectedSize = "40";
                                });
                              },
                            ),
                            SizeButton(
                              size: "42",
                              isSelected: selectedSize == "42",
                              function: () {
                                setState(() {
                                  selectedSize = "42";
                                });
                              },
                            ),
                            SizeButton(
                              size: "44",
                              isSelected: selectedSize == "44",
                              function: () {
                                setState(() {
                                  selectedSize = "44";
                                });
                              },
                            ),
                            SizeButton(
                              size: "46",
                              isSelected: selectedSize == "46",
                              function: () {
                                setState(() {
                                  selectedSize = "46";
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
