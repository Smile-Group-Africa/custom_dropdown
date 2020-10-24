import 'package:custom_dropdown/custom_dropdown.dart';

class Person extends CustomDropdownData{
  final int id;
  final String name;

  Person({
    this.id,
    this.name,
  });

  @override
  CustomDropdownModel toDropdownDataModel() {
    return CustomDropdownModel(name: this.name, value: this.id);
  }
}
