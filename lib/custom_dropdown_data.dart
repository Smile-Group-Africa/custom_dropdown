library custom_dropdown_data;

import 'package:custom_dropdown_data/dropdown_data.dart';
import 'package:custom_dropdown_data/dropdown_data_model.dart';
import 'package:flutter/material.dart';

class CustomDropDown<T extends DropdownData> extends StatefulWidget {
  final Function(int) onChanged;
  final List<T> items;

  const CustomDropDown({
    Key key,
    this.onChanged,
    this.items,
  })  : assert(
  onChanged != null,
  ),
        super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      hint: Text('Veuillez selectionner'),
      items: widget.items == null
          ? []
          : widget.items
          .map(
            (item) => _buildDropdownItem(
          item.toDropdownDataModel(),
        ),
      )
          .toList(),
      onChanged: widget.onChanged,
    );
  }

  DropdownMenuItem<int> _buildDropdownItem(DropdownDataModel model) {
    return DropdownMenuItem<int>(
      child: Text(model.name),
      value: model.value,
    );
  }
}