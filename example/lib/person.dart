import 'package:custom_dropdown_data/custom_dropdown_data.dart';

class Person extends CustomDropdownData {

  final int id;
  final String name;

  Person({
    this.id,
    this.name,
  });

  @override
  CustomDropdownDataModel toDropdownDataModel() => CustomDropdownDataModel(name: this.name, value: this.id);
}
