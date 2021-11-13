import 'dart:io';

void main() {
  var curr = Currency();
  print(curr.currencyToday());
  print(
      '1)Хотите обменять другую валюту на сом? \n2)Хотите обменять сом на другую валюту?');
  (convert());
}

class Currency {
  final usd = 84.8;
  final eur = 96.8;
  final rub = 1.15;
  final kzt = 0.1930;

  currencyToday() {
    return 'Курс на сегодня: \nДоллар США: $usd \nЕвро: $eur \nРубль $rub \nТенге: $kzt';
  }
}

convert() {
  var a = stdin.readLineSync();
  if (a == '1') {
    print('Выберете валюту: \n 1)USD \n 2)EUR \n 3)RUB \n4)KZT');
    currChoise();
  } else if (a == '2') {
    print('Выберете валюту: \n 1)USD \n 2)EUR \n 3)RUB \n4)KZT');
    currChoise2();
  }
}

currChoise2() {
  var a = num.parse(stdin.readLineSync()!);
  var t = Currency();
  eur() {
    print('Сколько сом вы хотите перевести в Евро?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a / t.eur;
    print('Обмен: $a сом на $b Евро');
  }

  usd() {
    print('Сколько сом вы хотите перевести в Доллары США?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a / t.usd;
    print('Обмен: $a сом на $b Долларов США');
  }

  rub() {
    print('Сколько сом вы хотите перевести в Рубли?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a / t.rub;
    print('Обмен: $a сом на $b Рублей');
  }

  kzt() {
    print('Сколько сом вы хотите перевести в Тенге?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a / t.kzt;
    print('Обмен: $a сом на $b Тенге');
  }

  if (a == 1) {
    usd();
    print('Конец программы начните заново');
  } else if (a == 2) {
    eur();
    print('Конец программы начните заново');
  } else if (a == 3) {
    rub();
    print('Конец программы начните заново');
  } else if (a == 4) {
    kzt();
    print('Конец программы начните заново');
  }
}

currChoise() {
  var a = num.parse(stdin.readLineSync()!);
  var t = Currency();
  eur() {
    print('Сколько Евро вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a * t.eur;
    print('Обмен: $a сом на $b Евро');
  }

  usd() {
    print('Сколько Долларов США вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a * t.usd;
    print('Обмен: $a сом на $b Долларов США');
  }

  rub() {
    print('Сколько Рублей вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    num b = a * t.rub;
    print('Обмен: $a сом на $b Рублей');
  }

  kzt() {
    print('Сколько Тенге вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    num b = t.kzt * a;
    print('Обмен: $a сом на $b Тенге');
  }

  if (a == 1) {
    usd();
    print('Конец программы начните заново');
  } else if (a == 2) {
    eur();
    print('Конец программы начните заново');
  } else if (a == 3) {
    rub();
    print('Конец программы начните заново');
  } else if (a == 4) {
    kzt();
    print('Конец программы начните заново');
  }
}
