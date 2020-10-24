library custom_dropdown;

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../custom_dropdown.dart';

class CustomDropDown<T extends CustomDropdownData> extends StatelessWidget {

  final Function(int) onChanged;
  final List<T> items;
  final String hint;

  const CustomDropDown({
    @required this.onChanged,
    @required this.items,
    this.hint,
  }) : assert(onChanged != null, items != null);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      hint: Text(hint ?? 'Veuillez selectionner'),
      items: items == null
          ? []
          : items
          .map(
            (item) => _buildDropdownItem(
          item.toDropdownDataModel(),
        ),
      )
          .toList(),
      onChanged: onChanged,
      isExpanded: true,
    );
  }

  DropdownMenuItem<int> _buildDropdownItem(CustomDropdownModel model) {
    return DropdownMenuItem<int>(
      child: Text(model.name),
      value: model.value,
    );
  }
}