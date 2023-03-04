import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:opentab/screens/CheckoutPage.dart';
import 'package:opentab/screens/menu.dart';

import '../main.dart';
import '../models/chatMessageModel.dart';

//listen to database


class paymentPage extends StatefulWidget {
  @override
  _paymentPage createState() => _paymentPage();
}

class _paymentPage extends State<paymentPage> {

  final textInput = TextEditingController();
  double _value = 20;
  double inset = 50;
  double fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Pay Now'),
        icon: const Icon(Icons.monetization_on_outlined),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.brown.shade50,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Center(
            // padding: EdgeInsets.all(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    width: 300,
                    height: 200,
                    child: ClipRRect(
                        child: Image(
                            alignment: Alignment.center,
                            image: AssetImage('assets/card.jpg')
                        )
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(inset),
                      child: Text('TOTAL', style: TextStyle(fontSize: fontSize)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(inset),
                      child: Text('\$$totalSum.00', style: TextStyle(fontSize: fontSize)),
                    ),
                  ),
          ],
                ),
                Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(inset),
                        child: Text('TIP \%', style: TextStyle(fontSize: fontSize)),
                      ),
                    ),
                  // Spacer(),
                   Expanded(
                  child: Slider(
                    min: 0.0,
                    max: 50,
                    value: _value,
                    divisions: 10,
                    label: '${_value.round()}',
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                   ),

                ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(inset),
                        child: Text('TOTAL + TIP', style: TextStyle(fontSize: fontSize)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(inset),
                        child: Text('\$' + (totalSum * (1 + (_value)/100)).toStringAsFixed(2), style: TextStyle(fontSize: fontSize)),
                      ),
                    ),
                  ],
                ),
                ]),
              ),


    );

          //       SafeArea(child: Padding(padding: EdgeInsets.only(
          //           left: 100, right: 16, top: 500, bottom: 550), child:
          //       Align(
          //         alignment: Alignment.bottomCenter,
          //         child: TextButton(
          //             style: ButtonStyle(
          //               foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
          //               overlayColor: MaterialStateProperty.resolveWith<Color?>(
          //                     (Set<MaterialState> states) {
          //                   if (states.contains(MaterialState.hovered))
          //                     return Colors.blue.withOpacity(0.04);
          //                   if (states.contains(MaterialState.focused) ||
          //                       states.contains(MaterialState.pressed))
          //                     return Colors.blue.withOpacity(0.12);
          //                   return null; // Defer to the widget's default.
          //                 },
          //               ),
          //             ),
          //             onPressed: () {},
          //             child: Text('Pay Now', style: TextStyle(fontSize: 50))
          //         ),
          //     ),
          //   )
          //
          // ),
          // ]
          //     )
          //     )
          //     );
  }}


// SafeArea(child: Padding(padding: EdgeInsets.only(
//     left: 16, right: 16, top: 500, bottom: 550), child:
// Align(
//   alignment: Alignment.bottomCenter,
//   child: TextButton(
//       style: ButtonStyle(
//         foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
//         overlayColor: MaterialStateProperty.resolveWith<Color?>(
//               (Set<MaterialState> states) {
//             if (states.contains(MaterialState.hovered))
//               return Colors.blue.withOpacity(0.04);
//             if (states.contains(MaterialState.focused) ||
//                 states.contains(MaterialState.pressed))
//               return Colors.blue.withOpacity(0.12);
//             return null; // Defer to the widget's default.
//           },
//         ),
//       ),
//       onPressed: () {},
//       child: Text('Pay Now', style: TextStyle(fontSize: 50))
//   ),