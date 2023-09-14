class Person {
  String name;
  double weight;
  double height;

  Person(this.name, this.weight, this.height);

  String get getName {
    return name;
  }

  set setName(String newName) {
    name = newName;
  }

  //peso
  double get getWeight {
    return weight;
  }

  set setWeight(double newWeight) {
    weight = newWeight;
  }

  //altura
  double get getHeight {
    return height;
  }

  set setAltura(double newHeight) {
    height = newHeight;
  }
}
