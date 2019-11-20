// Challenge
// Matryoshka dolls are traditionally wooden dolls that can be nested by fitting
// smaller dolls into larger ones. Suppose arrays can be nested similarly,
// placing smaller arrays into larger ones, in the following sense:
//

//// Array A can be nested inside Array B if:
//// 1. min(array A) > min(array B)
//// 2. max(array A) < max(array B)

//// For example, if A = [2, 3, 9, 5] and B = [10, 2, 1], then A can be nested inside B, since:
////  - min(A) = 2 > 1 = min(B) and
////   - max(A) = 9 < 10 = max(B)
bool matryoshkaDolls(List<List<int>> dolls) {
  dolls.forEach((doll) => doll.sort());
  dolls.sort(sizeComparator);
  for (int i = 0; i < dolls.length - 1; i++) {
    if (!canBeStacked(dolls[i], dolls[i + 1])) {
      return false;
    }
  }
  return true;
}

bool canBeStacked(List<int> doll1, List<int> doll2) =>
    (doll1.last < doll2.last && doll1.first > doll2.first);

int sizeComparator(List a, List b) => b.first.compareTo(a.first);

/// Create a function that returns true if every single sub-array inside an array
/// can be nested Matroyshka style, and false otherwise.
main() {
  print(matryoshkaDolls([
    [2, 3, 9, 5],
    [10, 2, 1],
    [8]
  ]));
  print(matryoshkaDolls([
    [7, 8],
    [4, 5],
    [2, 3],
    [1, 2]
  ]));
  print(matryoshkaDolls([
    [1, 10],
    [2, 9],
    [4, 5],
    [4, 7]
  ]));
  print(matryoshkaDolls([
    [1, 5],
    [2, 6],
    [4, 8],
    [3, 5]
  ]));
}
