void main(List<String> args) {
  try {
    print(100 ~/ 0);
    int.parse('j12');
  } on UnsupportedError catch (err) {
    print('1> ${err.message}');
  } on FormatException catch (err) {
    print('2> ${err.message}');
  } catch (e) {
    print('3> $e');
  }
  print('Fim');
}
