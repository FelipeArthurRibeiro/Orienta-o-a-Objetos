import 'dart:io';

void main(List<String> args) {
  String? nome = UsuarioDigita.readString('Digite seu nome:');
  double? peso = UsuarioDigita.readDouble('Digite seu peso:');
  int? idade = UsuarioDigita.readInt('Digite sua idade:');

  print('');

  print('Seu nome: $nome');
  print('Seu peso: $peso');
  print('Sua idade: $idade');
}

class UsuarioDigita {
  static String? readString(String msg) {
    print(msg);
    String? recebeString = stdin.readLineSync()!;
    return recebeString.isEmpty ? null : recebeString;
    /*
    if (recebeString.isEmpty) {
      return null;
    } else {
      return recebeString;
    }
    */
  }

  static double? readDouble(String msg) {
    print(msg);
    return double.tryParse(stdin.readLineSync()!);
  }

  static int? readInt(String msg) {
    print(msg);
    return int.tryParse(stdin.readLineSync()!);
  }
}
