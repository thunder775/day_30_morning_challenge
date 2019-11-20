import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Dummy Test', () {
    expect(5 + 2, 7);
  });

  test('Dummy Test 2', () {
    expect(5 + 4, 9);
  });
  test('dolls wrapping', () {
    expect(
        matryoshkaDolls([
          [2, 3, 9, 5],
          [10, 2, 1],
          [8,9]
        ]),
        false);
    expect(
        matryoshkaDolls([
          [7, 8],
          [4, 5],
          [2, 3],
          [1, 2]
        ]),
        false);
    expect(
        matryoshkaDolls([
          [1, 10],
          [2, 9],
          [4, 5],
          [4, 7]
        ]),
        false);
    expect(
        matryoshkaDolls([
          [1, 5],
          [2, 6],
          [4, 8],
          [3, 5]
        ]),
        false);
    expect(
        matryoshkaDolls([
          [8]
        ]),
        true);
  });
}
