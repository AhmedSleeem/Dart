void printRange(int start, int end) {
  for (int i = start; i <= end; ++i) {
    if ((i & 1) == 0) print(i);
  }
}

bool checkIfListContainsOdd(List<int> list) {
  //  0 2 4 6 8 9
  for (int i = 0; i < list.length; ++i) {
    if (list[i] % 2 == 1) return true;
  }
  bool ans = false;
  list.forEach((item) {
    ans |= (item % 2 == 1);
  });

  var tmpList = list.where((item) {
    return item % 2 == 1;
  });

  //firstWhere

  return tmpList.isNotEmpty;

//   return ans;
}

void switchBetweenLowerAndUpper(final String s) {
   bool turn = true;
   String tmp = "";
   for (int i = 0; i < s.length; ++i) {
     if (s[i] == '\n') {
       if (turn) {
         print(tmp.toUpperCase());
       } else
         print(tmp.toLowerCase());

       turn = !turn;

       tmp = "";
     } else {
       tmp += s[i];
     }
   }
   if (turn) {
     print(tmp.toUpperCase());
   } else
     print(tmp.toLowerCase());
 }
}

void main() {
//   printRange(0, 19);

//  print( checkIfListContainsOdd([2,4,6,8]));

  switchBetweenLowerAndUpper("""The wren
  Earns his living.
  Noiselessly""");
}
