import 'dart:async';

void main() async {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> comuns = a.toSet().intersection(b.toSet()).toList();

  print("✨💫 Bem-vindos ao show dos números mágicos! 💫✨\n");
  print("🌟 Observem atentamente os números que brilham juntos: 🌟\n");

  for (var num in comuns) {
    await Future.delayed(Duration(milliseconds: 600));
    print("💎✨ Número mágico encontrado: $num ✨💎");
  }

  await Future.delayed(Duration(milliseconds: 500));
  print("\n🌠🌠🌠 Todos os números mágicos foram revelados! 🌠🌠🌠");
}
