import 'package:flutter/material.dart';

void main() => runApp(const MyMensageBouble());

class MyMensageBouble extends StatelessWidget {
  const MyMensageBouble({super.key});

  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names
    final Colores = Theme.of(context).colorScheme;
    

    return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
      children: [
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              color: Colores.primary,
              borderRadius: BorderRadius.circular(20)
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text("que dices koku",style: TextStyle(color :Color.fromARGB(225, 225, 225, 225)) )),
          ),
          const SizedBox(height: 10)
      ],
    );
  }
}