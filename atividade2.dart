void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  List<int> fofinhos = a.where((num) => num < 5).toList();

  print("🌸✨ Números fofinhos menores que 5 ✨🌸");

  for (var num in fofinhos) {
    print("💖 $num 💖");
  }

  print("💕" * fofinhos.length * 2);
}
