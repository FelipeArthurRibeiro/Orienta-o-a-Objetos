void main(List<String> args) {
  mostraHello(() {
    print('Bye');
  });
  print('Fim');
}

mostraHello(Function callback) async {
  await Future.delayed(Duration(seconds: 1));
  callback();
}
