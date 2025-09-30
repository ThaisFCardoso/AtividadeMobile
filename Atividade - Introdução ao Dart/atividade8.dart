import 'dart:io';
import 'dart:async';

const rosa = '\x1B[38;5;205m';
const lilas = '\x1B[38;5;141m';
const verde = '\x1B[38;5;120m';
const reset = '\x1B[0m';

void main() async {
  print("$rosa✨💖 Bem-vindo(a) à conversa com Bob! 💖✨$reset");
  print("$lilas💌 Diga algo para Bob e veja como ele reage! 💌$reset");
  print("$verde💡 Digite 'sair' para encerrar a conversa. 💡$reset\n");

  while (true) {
    stdout.write("${rosa}Você: $reset");
    String? entrada = stdin.readLineSync();

    if (entrada == null) continue;
    if (entrada.toLowerCase() == "sair") {
      print("$rosa🌸 Até logo! Bob vai ficar te esperando... 🌸$reset");
      break;
    }

    String resposta = obterRespostaBob(entrada);

    await digitarBob(resposta, lilas);
  }
}

String obterRespostaBob(String texto) {
  if (texto == "") {
    return "Tudo bem. Seja desse jeito!";
  } else if (texto.endsWith("?") && texto == texto.toUpperCase()) {
    return "Calma, eu sei o que estou fazendo!";
  } else if (texto == texto.toUpperCase() && texto != "") {
    return "Uau, relaxe!";
  } else if (texto.endsWith("?")) {
    return "Ok";
  } else {
    return "Tanto faz";
  }
}

Future<void> digitarBob(String resposta, String cor) async {
  stdout.write("${cor}Bob: 💬 ");
  for (int i = 0; i < resposta.length; i++) {
    stdout.write(resposta[i]);
    await Future.delayed(Duration(milliseconds: 50));
  }
  stdout.writeln("$reset\n"); // usa a variável global reset
}
