import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_appilcation_ui/categories.dart';
import 'package:shopping_appilcation_ui/widget/category_tile.dart';
import 'package:shopping_appilcation_ui/widget/item_tile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String? tappedCategory;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        leading: null,
        title: Text(
          "Shoes",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, size: 35),
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart, size: 35))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView.builder(
                    itemCount: Categories.values.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final categories = Categories.values[index];
                      return CategoryTile(
                        categorynName: categories.name,
                        isTapped: tappedCategory == categories.name,
                        onTap: () {
                          setState(() {
                            tappedCategory = categories.name;
                          });
                        },
                      );
                    }),
              ),
              SizedBox(height: 20),
              ItemTile(
                id: 1,
                image: 'assets/images/one.jpg',
                category: Categories.Sneakers,
                brand: 'Nike',
                price: 100,
              ),
              ItemTile(
                id: 2,
                image: 'assets/images/two.jpg',
                category: Categories.Sneakers,
                brand: 'Nike',
                price: 100,
              ),
              ItemTile(
                id: 3,
                image: 'assets/images/three.jpg',
                category: Categories.Sneakers,
                brand: 'Nike',
                price: 100,
              ),
              ItemTile(
                id: 4,
                image: 'assets/images/five.jpg',
                category: Categories.Sneakers,
                brand: 'Nike',
                price: 100,
              ),
              ItemTile(
                id: 5,
                image: 'assets/images/four.jpg',
                category: Categories.Sneakers,
                brand: 'Nike',
                price: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
