import 'package:flutter/material.dart';
import 'package:appudemy/dice_roller.dart';

//const definido quando app é aberto
//final é definido quando app é compilado
//stateless se o widget for estatico(nao mudar)
//stateful caso o widget seja mutável

class GradientContainer extends StatelessWidget {
  //super referencia ao pai, nesse caso chama o construtor
  //do StatelessWidget passando a key do gradientcontainer
  //({key}) : super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});
  //da pra fazer um construtor diferente dentro da classe
  const GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.white;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        //a column pega todo o espaço horizontal, entao fica la encima, mas centralizado verticalmente
        child: DiceRoller(),
      ),
    );
  }
}
