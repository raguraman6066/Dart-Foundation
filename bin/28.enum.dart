enum Day { monday, tuesday, wednesday, thursday, friday }

// Enum in Dart is a special data type that defines a fixed set of constant values.
void main(List<String> args) {
  Day day = Day.friday;
  switch (day) {
    case Day.monday:
      print("this is monday");
      break;
    case Day.tuesday:
      print("this is tuesday");
      break;
    case Day.wednesday:
      print("this is wednesday");
      break;
    case Day.thursday:
      print("this is thursday");
      break;
    case Day.friday:
      print("this is friday");
      break;
    default:
      print("no match");
  }
}
