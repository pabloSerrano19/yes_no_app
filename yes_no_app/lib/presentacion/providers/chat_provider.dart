import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/message.dart';

class ChatProvider extends ChangeNotifier{

  final chatcrollController =ScrollController();

List<Message> messageList =[
  Message(text: "bokeron", fromWho: FromWho.hers),
  Message(text: "caracola", fromWho: FromWho.me),
 
];

Future<void> sendMessage (String text) async{
  if (text.isEmpty) return;

  messageList.add(Message(text: text, fromWho: FromWho.me));
  moveScrollToBotton();
  notifyListeners();
}

Future<void> moveScrollToBotton () async {
  await Future.delayed(const Duration(milliseconds: 100));
  chatcrollController.animateTo(
    chatcrollController.position.maxScrollExtent+50,
    curve: Curves.decelerate, 
    duration: const Duration(milliseconds: 1000)
  
  );
}


}