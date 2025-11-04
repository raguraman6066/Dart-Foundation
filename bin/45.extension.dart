void main(List<String> args) {
  String msg = "welcome to dart extension feature";
  print(msg.toCapitalize());
}

//Extension in Dart lets you add new methods or properties to existing classes without modifying the original class.
extension CapString on String {
  String toCapitalize() {
    List words = split(" ");
    List fwords = [];
    for (var word in words) {
      word = word[0].toString().toUpperCase() + word.toString().substring(1);
      fwords.add(word);
    }
    return fwords.join(" ");
  }
}
