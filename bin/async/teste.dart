void main(List<String> args) async {

  //bool conectado = await conectar();
  //print(conectado);

  conectar().then((value) => print(value));

  autenticar(() {
    print('Autenticado');           //Callback 
  });
  print('Fim');
}

autenticar(Function func) async {
  await Future.delayed(Duration(seconds: 2));
  func();
}

Future<bool> conectar() async {
  await Future.delayed(Duration(seconds: 1));
  return true;
}
