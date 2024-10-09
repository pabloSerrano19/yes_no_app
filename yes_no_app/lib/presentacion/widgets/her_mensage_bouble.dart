import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/message.dart';

class HerMensageBouble extends StatelessWidget {
  final Message textmensage;
  const HerMensageBouble({super.key, required this.textmensage});

  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names
    final Colores = Theme.of(context).colorScheme;

    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Container(
            decoration: BoxDecoration(
              color: Colores.primary,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(textmensage.text,style: const TextStyle(color :Color.fromARGB(225, 225, 225, 225)) )),
          ),
          const SizedBox(height: 10),
           _imagebouble()
           
      ],
    );
  }
}

// ignore: camel_case_types
class _imagebouble extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:  BorderRadius.circular(60),
      child: Image.network(
        "https://media.tenor.com/4nW98S0_wQcAAAAM/dance-battle.gif" ,width:500,
        fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress){
          if(loadingProgress == null) return child;
          return const SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
        )
      );
      
  }

}