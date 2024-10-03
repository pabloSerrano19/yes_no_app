import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/message.dart';

class ChatProvider extends ChangeNotifier{
List<Message> message =[
  Message(text: "hola", fromWho: FromWho.me),
  Message(text: "caracola", fromWho: FromWho.hers)
];

Future<void> sendMessage (String text) async{
  message.add(Message(text: text, fromWho: FromWho.me));
}

}