import 'package:flutter/material.dart';

class SizeButton extends StatefulWidget {
  final String size;
  final bool isSelected;
  final Function() function;

  SizeButton({
    Key? key,
    required this.size,
    required this.isSelected,
    required this.function,
  }) : super(key: key);

  @override
  State<SizeButton> createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.isSelected ? Colors.white : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.size,
            style: TextStyle(
              color: widget.isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
