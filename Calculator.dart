import 'dart:io';

void main() {
  while (true) {
    print('Welcome to My Simple Calculator!');
    print('Select an operation:');
    print('1. Add (+)');
    print('2. Subtract (-)');
    print('3. Multiply (*)');
    print('4. Divide (/)');
    print('5. Quit');

    String? userChoice = stdin.readLineSync();

    if (userChoice == '5') {
      print('Goodbye! Thanks for using the calculator.');
      break;
    }

    print('Enter the first value:');
    double? firstNumber = double.tryParse(stdin.readLineSync()!);
    print('Enter the second value:');
    double? secondNumber = double.tryParse(stdin.readLineSync()!);

    if (firstNumber == null || secondNumber == null) {
      print('Oops! That’s not a valid number. Please try again.');
      continue;
    }

    switch (userChoice) {
      case '1':
        print('The sum is: ${firstNumber + secondNumber}');
        break;
      case '2':
        print('The difference is: ${firstNumber - secondNumber}');
        break;
      case '3':
        print('The product is: ${firstNumber * secondNumber}');
        break;
      case '4':
        if (secondNumber == 0) {
          print('Oops! Cannot divide by zero.');
        } else {
          print('The quotient is: ${firstNumber / secondNumber}');
        }
        break;
      default:
        print('Invalid selection. Please pick a valid operation.');
    }
  }
}