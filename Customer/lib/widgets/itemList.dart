import 'package:flutter/material.dart';

import '../screens/chatDetailPage.dart';

class ItemList extends StatefulWidget{
  String menuItemName;
  int price;
  Icon icon;
  ItemList({required this.menuItemName,required this.price, required this.icon});
  @override
  ItemListState createState() => ItemListState();
}

class ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(Icons.fastfood_sharp),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.menuItemName, style: TextStyle(fontSize: 25, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("\$${widget.price}",style: TextStyle(fontSize: 16,color: Colors.black))
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      );
  }
}