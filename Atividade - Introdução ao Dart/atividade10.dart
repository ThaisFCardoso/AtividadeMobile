import 'dart:io';

void main() {
  const rosa = '\x1B[38;5;205m';
  const lilas = '\x1B[38;5;141m';
  const verde = '\x1B[38;5;120m';
  const reset = '\x1B[0m';

  print("$rosa✨💖 Bem-vindo(a) à transcrição de DNA para RNA! 💖✨$reset");
  stdout.write("$lilas💌 Digite a fita de DNA: $reset");
  String? dna = stdin.readLineSync();

  if (dna == null || dna.isEmpty) {
    print("$verde❌ Oops! Você não digitou nada. ❌$reset");
    return;
  }

  Map<String, String> transcricao = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
  };

  String rna = "";

  print("\n$rosa✨ Transcrevendo cada nucleotídeo... ✨$reset");

  for (int i = 0; i < dna.length; i++) {
    String letra = dna[i].toUpperCase();
    String complemento = transcricao[letra] ?? "?"; 
    rna += complemento;
    print("$lilas💖 DNA: '$letra' -> RNA: '$complemento'$reset");
  }

  print("\n$verde🌟 A fita de RNA transcrita é: $rna 🌟$reset");
  print("$rosa✨ Olha só! Sua fita de RNA está pronta! 💖✨$reset");
}
