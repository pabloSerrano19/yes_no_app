import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/yes_no_answer.dart';
import 'package:yes_no_app/domain/message.dart';

class ChatProvider extends ChangeNotifier{
  final getYesNoAnswer= GetYesNoAnswer();

  final chatcrollController =ScrollController();

List<Message> messageList =[
  Message(text: "bokeron", fromWho: FromWho.me),
  Message(text: "caracola", fromWho: FromWho.me),
 
];

Future<void> sendMessage (String text) async{
  if (text.isEmpty) return;

  messageList.add(Message(text: text, fromWho: FromWho.me));
  if(text.endsWith("?")){
  herReply();
  }
  moveScrollToBotton();
  notifyListeners();
}


Future <void> herReply()async{
  final hermenssage = await getYesNoAnswer.getAnswer();
  if(hermenssage.text.isEmpty) return;
  messageList.add(hermenssage);
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