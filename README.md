
# CustomDropDown
  
A flutter dropdown field for displaying data objects.  
  
## Installation
  
Add the CustomDropDown package to pubspec.yaml dependencies
```yaml
custom_dropdown:
    git:
      url: https://github.com/Smile-Group-Africa/custom_dropdown_data.git
```

Import the package in your dart file
```dart
import 'package:custom_dropdown/custom_dropdown.dart';
```

## Usage

Create data object

```dart
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
```

Use dropdown widget with list of datas

```dart
List<Person> people = [  
  Person(id: 1, name: "Boris"),  
  Person(id: 2, name: "Didier"),  
  Person(id: 3, name: "Innocent"),  
  Person(id: 4, name: "Jean-François"),  
  Person(id: 5, name: "Jean-Jacques"),  
];

...

CustomDropDown(  
  onChanged: (int id){  
    print("selected id = $id");  
  },  
  items: people,  
)
```

## API Reference

| Property | Default | Description | Type |
|---|---|---|---|
|`items`|`required`|List of datas|`List<T extends CustomDropdownData>`
|`onChanged`|`required`|Provide selected item value|`Function(int)`
|`hint`|optional|A hint text|`String`