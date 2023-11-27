import 'dart:io';
void displayMenu() {
  final String red = '\u001b[31m';
  final String green = '\u001b[32m';
  final String yellow = '\u001b[33m';
  final String blue = '\u001b[34m';
  final String pink = '\u001b[38;5;206m';
  final String resetColor = '\u001b[0m';
  print('${green}#############################################################${resetColor}');
  print('${yellow}################ MENU OPTIONS ###############################${resetColor}');
  print('${red}#############################################################${resetColor}');
  print('1. ${pink}Find the maximum number in the list.');
  print('2. ${pink}Find the minimum number in the list.');
  print('3. ${pink}Calculate the sum of all numbers in the list.');
  print('4. ${pink}Calculate the average of all numbers in the list.');
  print('5. ${red}Exit');
  print('${blue}*************************************************************${resetColor}');
  print('${blue}*************************************************************${resetColor}');
}void handleOption(int option) {
  switch (option) {
    case 1:
      final String magenta = '\u001b[35m';
      final String pink = '\u001b[38;5;206m';
      final String cyan = '\u001b[36m';
      print('${cyan}You selected Find the maximum number in the list.');
      print("${cyan}please enter the length of numbers: ");
      int? size = int.parse(stdin.readLineSync()!);
      List<int> numbers = [];
      for (int i = 1; i <= size; i++) {
        stdout.write('${pink}Please,enter your $i number: ');
        int? number = int.parse(stdin.readLineSync()!);
        numbers.add(number);
      }
      var maxNumber= findMaximum(numbers);
      print('${magenta}Maximum number: $maxNumber');
      break;
    case 2:
      final String cyan = '\u001b[36m';
      final String pink = '\u001b[38;5;206m';
      final String orange = '\u001b[38;5;208m';
      print('${cyan}You selected Find the minimum number in the list.');
      print("${cyan}please enter the length of numbers: ");
      int? size = int.parse(stdin.readLineSync()!);
      List<int> numbers = [];
      for (int i = 1; i <= size; i++) {
        stdout.write('${pink}Please,enter your $i number: ');
        int? number = int.parse(stdin.readLineSync()!);
        numbers.add(number);
      }
      var minNumber=findMinimum(numbers);
      print('${orange}Minimum number: $minNumber=');
      break;
    case 3:
      final String cyan = '\u001b[36m';
      final String pink = '\u001b[38;5;206m';
      final String orange = '\u001b[38;5;208m';
      print('${cyan}You selected Calculate the sum of all numbers in the list.');
      print("${cyan}please enter the length of numbers: ");
      int? size = int.parse(stdin.readLineSync()!);
      List<int> numbers = [];
      for (int i = 1; i <= size; i++) {
        stdout.write('${pink}Please,enter your $i number: ');
        int? number = int.parse(stdin.readLineSync()!);
        numbers.add(number);
      }
      var sum=calculateSum(numbers);
      print('${orange}Sum: $sum');
      break;
    case 4:
      final String cyan = '\u001b[36m';
      final String pink = '\u001b[38;5;206m';
      final String orange = '\u001b[38;5;208m';
      print('${cyan}You selected Calculate the average of all numbers in the list.');
      print("${cyan}please enter the length of numbers: ");
      int? size = int.parse(stdin.readLineSync()!);
      List<int> numbers = [];
      for (int i = 1; i <= size; i++) {
        stdout.write('${pink}Please,enter your $i number: ');
        int? number = int.parse(stdin.readLineSync()!);
        numbers.add(number);
      }
      var average=calculateAverage(numbers);
      print('${orange}Average: $average=');
      break;
    case 5:
      final String orange = '\u001b[38;5;208m';
      print('Exiting...');
      print('${orange}Have a Nice Day!!,Feel Free to Check Again!');
      exit(0);
      break;
    default:
      final String orange = '\u001b[38;5;208m';
      print('${orange}Invalid option');
      break;
  }
}
findMaximum(List<int> numbers){
  int maxNumber1 = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxNumber1) {
      maxNumber1 = numbers[i];
    }
  }
  //print('Maximum number: $maxNumber1');
  return maxNumber1;
}
findMinimum(List<int> numbers){
  int minNumber1 = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < minNumber1) {
      minNumber1 = numbers[i];
    }
  }
  //print('Minimum number: $minNumber1');
  return minNumber1;
}
calculateSum(List<int> numbers){
  int sum1 = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum1 += numbers[i];
  }
 // print('Sum: $sum1');
  return sum1;
}
calculateAverage(List<int> numbers){
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  double average = sum / numbers.length;
  //print('Average:$average');
  return average;
}

void main() {
  final String gray = '\u001b[90m';
  while (true) {
    displayMenu();
    stdout.write('${gray}Enter your choice: ');
    int option = int.parse(stdin.readLineSync()!);
    handleOption(option);
    print('${gray}===========================================================');
  }
}
