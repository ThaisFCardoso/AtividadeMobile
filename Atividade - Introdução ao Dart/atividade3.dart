import 'dart:io';

void main() {
  print("🌸✨ Olá! Vamos descobrir os divisores de um número! ✨🌸");
  
  stdout.write("💌 Por favor, digite um número: ");
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print("❌ Oops! Você não digitou nada! Tente novamente.");
    return;
  }

  int? numero = int.tryParse(input);
  
  if (numero == null) {
    print("❌ Isso não parece um número! Tente com um número inteiro.");
    return;
  }

  List<int> divisores = [];
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      divisores.add(i);
    }
  }

  print("\n✨💖 Os divisores de $numero são: 💖✨");
  print("🍀 " + divisores.join(" 💖 ") + " 🍀");

  print("✨" * divisores.length);
}
