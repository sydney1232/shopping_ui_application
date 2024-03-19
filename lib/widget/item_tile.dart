import 'package:flutter/cupertino.dart';

class ItemTile extends StatefulWidget {
  const ItemTile({super.key});

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage('assets/images/one.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
