import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  String categorynName;
  CategoryTile({super.key, required this.categorynName});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(50),
            right: Radius.circular(50),
          ),
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Text(categorynName),
        ),
      ),
    );
  }
}
