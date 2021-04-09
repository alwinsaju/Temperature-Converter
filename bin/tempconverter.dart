import 'dart:io';

void main() {
  print('A:Convert Celsius to Fahrenheit\nB:Convert Fahrenheit to Celsius');
  String selection;
  
  do {
    selection = stdin.readLineSync().toUpperCase(); 
  } while (selection != 'A' && selection != 'B');
  
  print('Enter the starting temperature:');
  String inTemp = stdin.readLineSync();
  int temp = int.parse(inTemp);
  
  switch (selection) {
    case 'A':
      print('$temp °C is ${temp * 1.8 + 32} °F . This is caculated by Multiplying the temperature which is in Celcius ( in this case, You Chose : $temp °C) with 1.8 and then adding 32 to it. In simple terms ($temp * 1.8 + 32) ');
      break;
    case 'B':
      print('$temp °F is ${(temp - 32) / 1.8} °C . This is caculated by Substracting the temperature which is in Fahrenheit ( in this case, You Chose : $temp °F) with 32 and then divide it by 32. In simple terms [($temp - 32) / 1.8]');
      break;
    default:
      break;
  }
} 