import 'dart:io';

void main() {
  stdout.write("✨ Digite seu nome: ");
  String nome = stdin.readLineSync()!.trim();

  stdout.write("🎂 Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!.trim());

  print("\n🌷 Olá, $nome! Você tem $idade anos. 🌷");

  final anoAtual = DateTime.now().year;
  final anoNascimento = anoAtual - idade;
  print("🎉 Você nasceu em $anoNascimento.\n");

  for (int ano = anoNascimento; ano <= anoAtual; ano++) {
    int anosVividos = ano - anoNascimento;
    if (anosVividos == 0) {
      print("🌟 No ano de $ano você nasceu!");
    } else if (anosVividos == 1) {
      print("🌟 No ano de $ano você tinha 1 ano.");
    } else {
      print("🌟 No ano de $ano você tinha $anosVividos anos.");
    }
  }

  int faltaPara100 = 100 - idade;
  print("\n💫 Faltam $faltaPara100 anos para você completar 100 anos! 💫");
  print("💌 Aproveite cada momento, $nome! 💌");
}
