import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatefulWidget {
  String categorynName;
  bool isTapped;
  Function() onTap;
  CategoryTile(
      {super.key,
      required this.categorynName,
      required this.isTapped,
      required this.onTap});

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(50),
              right: Radius.circular(50),
            ),
            color: widget.isTapped ? Colors.grey.shade200 : Colors.white,
          ),
          child: Center(
            child: Text(
              widget.categorynName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
