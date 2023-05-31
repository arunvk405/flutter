import 'person.dart';

void main(List<String> arguments) {
  final person = Person("arun", 25);
  // person.name = "another name";
  person.setAge = 20;
  print(person.helloAge);

  // final person = Person.ageAbove50('Manikandan', 52);
}
