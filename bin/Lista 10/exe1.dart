void main(List<String> args) async {
  await contador();
  print('Fim');
}

contador() async {
  for (int i = 1; i <= 10; i++) {
    print(i);
    await Future.delayed(Duration(seconds: 1));
  }
}
