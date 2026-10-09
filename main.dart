import 'dart:io';

void main() {
  print('======================================================');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');
  print('Please enter your pizza size (small, medium, or large)');
  String? size = stdin.readLineSync()!;

  int price = 0;
  switch (size) {
    case 'small':
      price = 5;
      break;
    case 'medium':
      price = 7;
      break;
    case 'large':
      price = 10;
      break;
    default:
      print('Invalid size selected.');
      return;
  }

  print('How many pizzas do you want of $size?');

  String? quantityInput = stdin.readLineSync();
  int quantity = int.tryParse(quantityInput ?? '0') ?? 0;

  int totalPayment = price * quantity;
  print('Your Total Payment is: \$$totalPayment');
}
