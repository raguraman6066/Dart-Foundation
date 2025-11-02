void main(List<String> args) {
  Division d = Division();
  d.getResult(23);
  ValidVoter v = ValidVoter(17);
  try {
    v.checkVoter();
  } catch (e) {
    print(e.toString());
  }
}

class Division {
  int result = 0;
  void getResult(int num) {
    try {
      result =
          num ~/
          10; //exception, execution stops here. IntegerDivisionByZeroException
    }
    //  on IntegerDivisionByZeroException {
    //   print("can not divide by 0");
    // } without using catch.
    catch (e, stackTrace) {
      //stacktrace -where the exception is.
      print("can not divide by 0 $e $stackTrace");
    } finally {
      print("end of division statement"); //execute every time.
    }
    print("result $result");
  }
}

//custom or user defined exception
class ValidVoter {
  int age;
  ValidVoter(this.age);
  void checkVoter() {
    if (age > 18) {
      print("valid voter");
    } else {
      throw VoterException("voter is not valid!");
    }
  }
}

class VoterException implements Exception {
  String msg;
  VoterException(this.msg);
  @override
  String toString() => msg;
}
