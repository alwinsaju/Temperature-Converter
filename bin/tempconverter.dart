import 'dart:io';

void main() {
  print('Please Select one of the following :\n\tA:Convert Celsius to Fahrenheit\n\tB:Convert Fahrenheit to Celsius');
  String selection;
  
  do {
    selection = stdin.readLineSync().toUpperCase(); 
  } while (selection != 'A' && selection != 'B');
  
  print('Enter the starting temperature:');
  String inTemp = stdin.readLineSync();
  int temp = int.parse(inTemp);
  
  switch (selection) {
    case 'A':
      print('\nX-X-X-X-X \n\n$temp °C is ${temp * 1.8 + 32} °F . \nThis is caculated by Multiplying the temperature which is in Celcius ( in this case, You Chose : $temp °C) \nwith 1.8 and then adding 32 to it. \nIn simple terms ($temp * 1.8 + 32) ');
      break;
    case 'B':
      print('\nX-X-X-X-X \n\n$temp °F is ${(temp - 32) / 1.8} °C . \nThis is caculated by Substracting the temperature which is in Fahrenheit ( in this case, You Chose : $temp °F) \nwith 32 and then divide it by 32. \nIn simple terms [($temp - 32) / 1.8]');
      break;
    default:
      break;
  }
} 