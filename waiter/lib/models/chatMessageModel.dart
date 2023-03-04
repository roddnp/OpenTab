

import 'package:flutter/cupertino.dart';




class ChatMessage {
  String? receiverID;
  String? senderID;
  String? messageContent;
  String? timeStamp;


  ChatMessage(
      {required this.receiverID,
        required this.senderID,
        required this.messageContent,
        required this.timeStamp
      });

  ChatMessage.fromJson(Map<String, dynamic> json) {
    receiverID = json['receiverID'];
    senderID = json['senderID'];
    messageContent = json['text'];
    timeStamp = json['timestamp'];
  }
}