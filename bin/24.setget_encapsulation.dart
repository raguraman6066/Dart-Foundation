import 'package:dartpro/getset.dart';

void main(List<String> args) {
  //encapsulation is a concept of data hiding in which we create
  //private variable in a class and access those variable by using
  //getter and setter method
  Animal a = Animal();
  a.setAnimalBreed = "german";
  a.setAnimalName = "tommy";
  print(a.animalBreed);
  print(a.animalName);
}
