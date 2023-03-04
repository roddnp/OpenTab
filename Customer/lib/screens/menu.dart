import 'dart:html';
import 'package:opentab/models/menuItemsModel.dart';
import 'package:opentab/screens/CheckoutPage.dart';
import 'package:flutter/material.dart';


class Menu extends StatelessWidget {

  List<MenuItems> items = [
    MenuItems(menuItemName: "Pancake", price: 12, img: 'panCake.jpg'),
    MenuItems(menuItemName: "Acai Bowl", price: 9, img: 'acaiBowl.jpg'),
    MenuItems(menuItemName: "Burger", price: 14, img: 'burger.JPG'),
    MenuItems(menuItemName: "Salad", price: 12, img: 'salad.JPG'),
    MenuItems(menuItemName: "Cake", price: 6, img: 'cake.JPG'),
    MenuItems(menuItemName: "Donuts", price: 6, img: 'donut.JPG'),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("OpenTab"),
          backgroundColor: Colors.pinkAccent.shade400,
        ),
        body: Container(
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
              ),
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: () => {
                    addHelper(items[index]),
                    totalSum += items[index].price,
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${items[index].menuItemName} Added"))),
                  },
                  child: Image.asset(items[index].img, height: 200, width: 250, fit: BoxFit.fill),
                );
              },
            )),
      ),
    );
  }
}

addHelper(MenuItems it) {
  boughtItems.add(it);
}


