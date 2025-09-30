import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {
  const rosa = '\x1B[38;5;205m';
  const lilas = '\x1B[38;5;141m';
  const verde = '\x1B[38;5;120m';
  const amarelo = '\x1B[38;5;220m';
  const reset = '\x1B[0m';

  List<String> opcoes = ["Pedra", "Papel", "Tesoura"];
  Map<String, String> emoji = {
    "Pedra": "🪨",
    "Papel": "📄",
    "Tesoura": "✂️"
  };
  Map<String, String> cores = {
    "Pedra": lilas,
    "Papel": verde,
    "Tesoura": rosa
  };

  print("$rosa💖✨ Bem-vindo ao Joguinho Fofo de Pedra, Papel ou Tesoura! ✨💖$reset");

  while (true) {
    print("\n💌 Escolha sua arma mágica: Pedra 🪨, Papel 📄 ou Tesoura ✂️");
    print("💡 Ou digite 'sair' para encerrar o jogo.");

    stdout.write("$amarelo💖 Sua escolha: $reset");
    String? usuario = stdin.readLineSync()?.trim();

    if (usuario == null) continue;
    if (usuario.toLowerCase() == "sair") {
      print("$rosa💗 Obrigada por jogar! Até a próxima! 💗$reset");
      break;
    }

    if (!opcoes.contains(usuario)) {
      print("$rosa❌ Escolha inválida. Tente Pedra, Papel ou Tesoura.$reset");
      continue;
    }

    String computador = opcoes[Random().nextInt(opcoes.length)];

    print("\n✨ Preparando a batalha mágica! ✨");
    for (int i = 3; i > 0; i--) {
      print("$lilas$i...$reset");
      await Future.delayed(Duration(milliseconds: 500));
    }

    print("\n🌟 Você escolheu: ${cores[usuario]}${emoji[usuario]} $usuario$reset");
    print("🌟 Computador escolheu: ${cores[computador]}${emoji[computador]} $computador$reset\n");

    if (usuario == computador) {
      print("$rosa🌸 Empate! Ninguém perde, ninguém ganha! 🌸$reset");
    } else if ((usuario == "Pedra" && computador == "Tesoura") ||
        (usuario == "Papel" && computador == "Pedra") ||
        (usuario == "Tesoura" && computador == "Papel")) {
      print("$rosa💖 Você venceu! Parabéns! 💖$reset");
    } else {
      print("$rosa💖 Computador venceu! Mas não desanime, tente de novo! 💖$reset");
    }
  }
}
