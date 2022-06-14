import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  bool contar = true;

  _stopBackground().then((value) {
    contar = false;
  });

  int contador = 0;
  while (contar) {
    await Future.delayed(Duration(seconds: 1));
    print(++contador);
  }
}

Future<String> _stopBackground() async {
  final p = ReceivePort();
  Isolate.spawn(_stop, p.sendPort);
  return await p.first as String;
}

Future<void> _stop(SendPort p) async {
  String line = stdin.readLineSync()!;

  Isolate.exit(p, line);
}
