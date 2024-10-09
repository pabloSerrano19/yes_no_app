import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/message.dart';
import 'package:yes_no_app/presentacion/providers/chat_provider.dart';
import 'package:yes_no_app/presentacion/widgets/her_mensage_bouble.dart';
import 'package:yes_no_app/presentacion/widgets/my_mensage_bouble.dart';
import 'package:yes_no_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(

          centerTitle: false,
          title: const Text('Mondongo'),
          leading: const CircleAvatar(
            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/02/18/20/52/goku-6028390_640.png"),
          ),
        ),
        body: _chatView ()
      );
 
  }



}

// ignore: camel_case_types
class _chatView extends StatelessWidget {
 

 
  @override
  Widget build(BuildContext context) {
    

    final chatprovider =context.watch<ChatProvider>();
    chatprovider.messageList;

      return 
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
            
              child: Column(
                children: [
                  Expanded(child:ListView.builder(
                    controller: chatprovider.chatcrollController,
                    itemCount: chatprovider.messageList.length,
                    itemBuilder: (context,index){
                    final message =chatprovider.messageList[index];
                    return(message.fromWho==FromWho.hers)
                      ?HerMensageBouble(textmensage:message)
                      :MyMensageBouble(textmensage:message);
                    
                    }
                  )
                  ),
                  const MessageFieldBox()
                ], 
                
              ),
              
            
            ),
            
          );
        
      

 
  }

}

