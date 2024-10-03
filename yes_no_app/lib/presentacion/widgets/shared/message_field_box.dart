import 'package:flutter/material.dart';

class MessageFieldBox  extends StatelessWidget{
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

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
        texController.clear();
        focusNode.requestFocus();
      } 
      ,
  onChanged: (value) => print("changed: $value"),
    );
    
  }

}