import 'dart:io';

/* Terceiro exemplo são calculos de adição, subtracao, e multiplicacao. */

void main() async {
  print('digite o primeiro número: ');
  var entradaPrimeiroValor = stdin.readLineSync();
  var primeiroValor = double.parse(entradaPrimeiroValor);

  print('digite o Segundo número: ');
  var entradaSegundoValor = stdin.readLineSync();
  var segundoValor = double.parse(entradaSegundoValor);

  print('');
  print('Multiplicação:');
  await multiplicacao(double, primeiroValor, segundoValor);
  print('Adição:');
  adicao(double, primeiroValor, segundoValor);
  print('Subtração:');
  subtracao(double, primeiroValor, segundoValor);
}

adicao(double, a, b) {
  return print(a + b);
}

subtracao(double, a, b) => print(a - b);

Future multiplicacao(double, a, b) {
  return Future.delayed(Duration(seconds: 1), () => print(a * b));
}
