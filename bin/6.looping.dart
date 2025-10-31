import 'dart:io';

void main(List<String> args) {
  //repeat the statement.
for (int i = 1; i <= 5; i++) {
    //initialization is only on first time (int i=1)
    print("value of i= $i");
  }


   int j = 6;
  while (j <= 10) {
    print("value of j= $j");
    j++;
   }


  int k = 11;
  do {
    print("value of k= $k");
    k++;
  } while (k <= 15);


  String input = "hi";
  while (input != "no") {
    print("do you want to continue");
    input = stdin.readLineSync().toString(); //set value to input variable
    //when we dont know number of iterations, or when to close
  }
}
