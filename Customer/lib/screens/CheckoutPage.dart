import 'package:flutter/material.dart';
import '../models/menuItemsModel.dart';
import '../widgets/conversationList.dart';
import '../widgets/itemList.dart';
import 'package:opentab/screens/paymentPage.dart';

List<MenuItems> boughtItems = [

];

int totalSum = 0;

class CheckoutPage extends StatefulWidget {
  @override
  checkoutPageState createState() => checkoutPageState();
}

  class checkoutPageState extends State<CheckoutPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return paymentPage();
          }));
        },
        label: const Text('Checkout'),
        icon: const Icon(Icons.monetization_on_outlined),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Bill",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                    )
                  ],
                ),
              ),
            ),

            ListView.builder(
              itemCount: boughtItems.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ItemList(
                  menuItemName: boughtItems[index].menuItemName,
                  price: boughtItems[index].price,
                  icon: const Icon(Icons.fastfood_sharp)
                );
              },
            ),
          ],
        ),
      ),
    );
  }


  }
