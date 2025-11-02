class Animal {
  String? _name;
  String? _breed;
  get animalName {
    return _name;
  }

  get animalBreed {
    return _breed;
  }

  set setAnimalName(name) {
    _name = name;
  }

  set setAnimalBreed(breed) {
    _breed = breed;
  }
}
