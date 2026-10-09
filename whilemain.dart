import 'dart:io';

void main() {
  print('=' * 54);
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  int price = 0;
  String size = '';

  while (price == 0) {
    print('Please enter your pizza size (small, medium, or large):');
    String? input = stdin.readLineSync()?.toLowerCase();

    if (input == 'small') {
      price = 5;
      size = input!;
    } else if (input == 'medium') {
      price = 7;
      size = input!;
    } else if (input == 'large') {
      price = 10;
      size = input!;
    } else {
      print('Invalid size selected.');
    }
  }

  print('How many pizzas do you want of $size?');

  String? quantityInput = stdin.readLineSync();
  int quantity = int.tryParse(quantityInput ?? '0') ?? 0;

  int totalPayment = price * quantity;
  print('Your Total Payment is: \$$totalPayment');
}
