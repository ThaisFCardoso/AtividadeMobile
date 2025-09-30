import 'dart:io';

void main() {
  const rosa = '\x1B[38;5;205m';
  const lilas = '\x1B[38;5;141m';
  const verde = '\x1B[38;5;120m';
  const reset = '\x1B[0m';

  print("$rosa✨💖 Bem-vindo(a) ao contador fofo de Scrabble! 💖✨$reset");
  stdout.write("$lilas💌 Digite uma palavra: $reset");
  String? palavra = stdin.readLineSync();

  if (palavra == null || palavra.isEmpty) {
    print("$verde❌ Oops! Você não digitou nada. Tente novamente! ❌$reset");
    return;
  }

  int pontuacao = 0;

  Map<String, int> pontos = {
    "A":1,"E":1,"I":1,"O":1,"U":1,"L":1,"N":1,"R":1,"S":1,"T":1,
    "D":2,"G":2,
    "B":3,"C":3,"M":3,"P":3,
    "F":4,"H":4,"V":4,"W":4,"Y":4,
    "K":5,
    "J":8,"X":8,
    "Q":10,"Z":10
  };

  print("\n$rosa✨ Calculando a pontuação mágica da palavra '$palavra'... ✨$reset");

  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i].toUpperCase();
    int valor = pontos[letra] ?? 0; 
    pontuacao += valor;
    print("$lilas💖 Letra '${letra}' vale $valor ponto(s)! 💖$reset");
  }

  print("\n$verde🌟 A pontuação total da palavra '$palavra' é: $pontuacao pontos! 🌟$reset");
  print("$rosa✨ Que fofura! Sua palavra brilhou! ✨💖$reset");
}
