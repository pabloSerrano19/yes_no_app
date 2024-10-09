import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentacion/providers/chat_provider.dart';

class MessageFieldBox  extends StatelessWidget{
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final chatprovider =context.watch<ChatProvider>();

  var texController =TextEditingController();
   final colores = Theme.of(context).colorScheme; 
   final focusNode=FocusNode();
  
    var underlineInputBorder = const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          )


        );
    var inputDecoration = InputDecoration(
        hintText: "porque te tatuatis",
        fillColor: colores.inversePrimary,
        enabledBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: (){
            final texvalue = texController.value.text;
            print("VALOR DE LA CAJA DE TEXTO $texvalue" );
            chatprovider.sendMessage(texvalue);
          },
        )
      );



    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),

      focusNode: focusNode,
      decoration: inputDecoration,
      controller :texController,
      onFieldSubmitted: (value) {
        print("submit: $value");
        chatprovider.sendMessage(value);
        
        texController.clear();
        focusNode.requestFocus();
      } 
      ,
  onChanged: (value) => print("changed: $value"),
    );
    
  }

}