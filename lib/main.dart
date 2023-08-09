import 'package:flutter/material.dart';
import 'package:appudemy/gradient_container.dart';
//o flutter transforma o codigo dart em linguagem de maquina e depois transforma a linguagem de maquina
//na linguagem nativa do sistema operacional do celular
//todo app em flutter comeca com main.dart -> main() -> runApp()
//toda ui de flutter eh feita com widgets e sao bem parecidas com compontentes em css
//o vscode ajuda MUITO ja que eh da mesma criadora do flutter/dart (mirconoft)
//tambem tem algumas semelhancas com c++ pelo mesmo motivo

const Color color1 = Color.fromARGB(197, 211, 211, 224);
const Color color2 = Color.fromARGB(218, 11, 156, 223);

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1,
          color2,
        ),
      ),
    ),
  );
}
