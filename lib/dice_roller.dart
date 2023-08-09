import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//_ no comeco da classe faz com que ela seja privada
class _DiceRollerState extends State<DiceRoller> {
  int diceRoll = 2;

  void rollDice() {
    //setState faz a UI ser carregada novamente com as alteracoes feitas dentro dela
    setState(() {
      diceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, //definir a coluna pra gastar o minimo de espaco possivel
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
        ),
        const SizedBox(
            height: 20), //cria uma caixa invisivel que ocupa 20px de espaco
        TextButton(
          onPressed: rollDice, //ponteiro para a funcao rollDice
          style: TextButton.styleFrom(
            /*(padding: const EdgeInsets.only(
              top: 50,
            ),*/ //coloca padding apenas no top
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Rodar o dado'),
        )
      ],
    );
  }
}
