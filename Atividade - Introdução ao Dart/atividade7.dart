import 'dart:io';
import 'dart:async';

void main() async {
  const rosa = '\x1B[38;5;205m';
  const lilas = '\x1B[38;5;141m';
  const verde = '\x1B[38;5;120m';
  const amarelo = '\x1B[38;5;220m';
  const reset = '\x1B[0m';

  print("$rosa✨💖 Bem-vinda(o) ao cálculo mágico dos números naturais! 💖✨$reset");

  stdout.write("$verde💌 Digite o valor de N (quantos primeiros números naturais você quer usar?): $reset");
  String? input = stdin.readLineSync();
  int? n = int.tryParse(input ?? '');

  if (n == null || n <= 0) {
    print("$lilas❌ Oops! Valor inválido. Digite um número natural maior que 0.$reset");
    return;
  }

  print("\n$amarelo✨ Calculando a magia dos números de 1 até $n... ✨$reset");
  await Future.delayed(Duration(seconds: 1));

  int soma = 0;
  for (int i = 1; i <= n; i++) {
    soma += i;
  }
  int quadradoDaSoma = soma * soma;

  int somaDosQuadrados = 0;
  for (int i = 1; i <= n; i++) {
    somaDosQuadrados += i * i;
  }

  int diferenca = quadradoDaSoma - somaDosQuadrados;

  print("\n$lilas💫 A soma dos números de 1 a $n é: $soma 💫$reset");
  print("$rosa💖 O quadrado da soma é: $quadradoDaSoma 💖$reset");
  print("$verde🌸 A soma dos quadrados é: $somaDosQuadrados 🌸$reset");
  print("\n$amarelo✨💎 Portanto, a diferença mágica é: $diferenca 💎✨$reset");

  print("$rosa🌟💖✨ Que magia maravilhosa dos números! ✨💖🌟$reset");
}
