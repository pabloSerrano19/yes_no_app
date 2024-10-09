import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/message.dart';



class MyMensageBouble extends StatelessWidget {
  final Message textmensage;

  const MyMensageBouble({super.key, required this.textmensage});

  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names
    final Colores = Theme.of(context).colorScheme;
    

    return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
      children: [
          Container(
            decoration: BoxDecoration(
              color: Colores.primary,
              borderRadius: BorderRadius.circular(20)
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(textmensage.text,style: const TextStyle(color :Color.fromARGB(225, 225, 225, 225)) )),
          ),
          const SizedBox(height: 10)
      ],
    );
  }
}