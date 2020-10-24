import 'package:custom_dropdown_data/custom_dropdown_data.dart';
import 'package:example/person.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  List<Person> people = [
    Person(id: 1, name: "Boris"),
    Person(id: 2, name: "Didier"),
    Person(id: 3, name: "Innocent"),
    Person(id: 4, name: "Jean-François"),
    Person(id: 5, name: "Jean-Jacques"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomDropDown(
          hint: 'Selectionner personne',
          onChanged: (int modelId){
            print("selected model ID = $modelId");
          },
          items: people,
        ),
      ),
    );
  }
}
