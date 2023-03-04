import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:opentab/screens/homePage.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:opentab/models/chatMessageModel.dart';


var serverid = 5678;
var customerid = 1234;


List messages = [];

final ValueNotifier<int> needUpdate = ValueNotifier<int>(0);


Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final ref = FirebaseDatabase.instance.ref('12345678/');
  ref.onChildAdded.listen((event) {
    //parse the message and add it
    Map<String, dynamic> data = jsonDecode(jsonEncode(event.snapshot.value))  as Map<String, dynamic>;
    ChatMessage newMessage = ChatMessage.fromJson(data);
    messages.add(newMessage);
    needUpdate.value++;
  });
  // ref.onChildAdded.listen((event) {
  //   temp+= 1;
  //   messages.add(event.snapshot.value);
  // });



  //get all of the old data, can limit this later



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

