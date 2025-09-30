import 'dart:async';

void main() async {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> pares = a.where((num) => num % 2 == 0).toList();

  print("🌟✨ Apresentando os números pares mágicos! ✨🌟\n");

  for (var num in pares) {
    await Future.delayed(Duration(milliseconds: 600));
    print("🌟💫 $num 💫🌟");
  }

  await Future.delayed(Duration(milliseconds: 500));
  print("\n🎆 Todos os números pares brilharam! 🎆");
}
