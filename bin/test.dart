import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 2", () {
    expect(sortNumbers([1, 45, 9, 234, 495]), [495, 234, 45, 9, 1]);
  });

  test("test case 3", () {
    expect(isValidIP('192.168.0.1'), true);
  });

  test("test case 4", () {
    expect(doubleSwap("aabbccc", "a", "b"), "bbaaccc");
  });
}
