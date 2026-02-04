import 'dart:io';
import 'dart:math';

void main() {
  print('Калькулятор с пользовательским вводом');
  print('=====================================');

  // Ввод первого числа
  print('Введите первое число:');
  double num1 = double.parse(stdin.readLineSync()!);

  // Ввод второго числа
  print('Введите второе число:');
  double num2 = double.parse(stdin.readLineSync()!);

  // Выбор операции
  print('''
Выберите операцию:
+ Сложение
- Вычитание
* Умножение
/ Деление
~/ Целочисленное деление
% Остаток от деления
pow() Возведение в степень
  ''');

  String operation = stdin.readLineSync()!;

  // Выполнение операции и вывод результата
  switch (operation) {
    case '+':
      print('$num1 + $num2 = ${num1 + num2}');
      break;

    case '-':
      print('$num1 - $num2 = ${num1 - num2}');
      break;

    case '*':
      print('$num1 * $num2 = ${num1 * num2}');
      break;

    case '/':
      if (num2 != 0) {
        print('$num1 / $num2 = ${num1 / num2}');
      } else {
        print('Ошибка: деление на ноль!');
      }
      break;

    case '~/':
      if (num2 != 0) {
        print('$num1 ~/ $num2 = ${(num1 ~/ num2)}');
      } else {
        print('Ошибка: деление на ноль!');
      }
      break;

    case '%':
      if (num2 != 0) {
        print('$num1 % $num2 = ${num1 % num2}');
      } else {
        print('Ошибка: деление на ноль!');
      }
      break;

    case 'pow()':
      print('$num1 ^ $num2 = ${pow(num1, num2)}');
      break;

    default:
      print('Ошибка: неизвестная операция!');
      break;
  }

  print('=====================================');
}
