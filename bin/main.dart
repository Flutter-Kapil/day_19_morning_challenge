// Challenge 1
// Write failing test cases for given 3 challenges

// Challenge 2
// Sort by Digit Length, then By Number Itself
// Write a function that sorts an array of integers by their digit length in
// descending order, then settles ties by sorting numbers with the same digit length in ascending order.
import 'package:test/test.dart';

List sortNumbers(List<int> numbersList) {
  numbersList.sort();
  List<int> finalList = [];

  return numbersList;
}

List reverseList(List x) {
  List output = [];
  for (int i = x.length - 1; i >= 0; i--) {
    output.add(x[i]);
  }
  return output;
}

// Challenge 3
// IPv4 Validation
// Create a function that takes a string (IPv4 address in standard dot-decimal
// format) and returns true if the IP is valid or false if it's not.
// isValidIP("1.2.3.4") ➞ true
// isValidIP("1.2.3") ➞ false
// isValidIP("123.045.067.089") ➞ false
bool isValidIP(String ip) {
  bool result = true;
  List listOfIP = ip.split('.');
  if (listOfIP.length != 4) {
    throw isArgumentError;
  } else {
    for (int i = 0; i < 4; i++) {
      if (int.parse(listOfIP[i]) > 255 || int.parse(listOfIP[i]) < 0) {
        return result = false;
      } else if (isLeadingZero(listOfIP[i])) {
        return result = false;
      }
    }
  }
  return result;
}

bool isLeadingZero(String x) {
  bool result = false;
  List xList = x.split('');
  if (xList.length == 1) {
    result = false;
  } else if (xList[0] == '0') {
    result = true;
  }
  return result;
}
// Challenge 4
// Double Character Swap
// Write a function to replace all instances of character c1 with character c2 and vice versa.
// Examples
// doubleSwap( "aabbccc", "a", "b") ➞ "bbaaccc"

String doubleSwap(String word, String c1, String c2) {
  List word2List = word.split('');
  for (int i = 0; i < word2List.length; i++) {
    if (word2List[i] == c1) {
      word2List[i] = c2;
    } else if (word2List[i] == c2) {
      word2List[i] = c1;
    }
  }
  return word2List.join();
}

main() {
  print('challenge 2');
  print(sortNumbers([1, 9, 24, 8, 45, 11, 298, 313]));
  print('challenge 3');
  print(isValidIP('192.168.0.255'));
  print('challenge 4');
  print(doubleSwap("aabbccc", "a", "b"));
}
