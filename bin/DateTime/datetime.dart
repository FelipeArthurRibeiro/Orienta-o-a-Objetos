import 'package:intl/intl.dart';

void main(List<String> args) {
  DateTime agora = DateTime.now();
  print(agora);

  DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm:ss');
  String strDate = formatter.format(agora);

  print(strDate);

  DateTime antes = formatter.parse('20/05/2022 18:33:42');
  print(antes);
}
