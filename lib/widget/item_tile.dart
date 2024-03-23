import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../categories.dart';

class ItemTile extends StatefulWidget {
  final int id;
  final String image;
  final Categories category;
  final String brand;
  final double price;

  ItemTile(
      {super.key,
      required this.id,
      required this.image,
      required this.category,
      required this.brand,
      required this.price});

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'shoe',
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20, right: 10, left: 10),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 10,
                color: Colors.grey,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.category.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          widget.brand,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
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
              ),
              Text(
                widget.price.toDouble() % 1 == 0
                    ? "${widget.price.toInt()}\$"
                    : "${widget.price.toString()}\$",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
