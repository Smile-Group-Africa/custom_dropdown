library custom_dropdown_data;

import 'package:custom_dropdown_data/src/custom_dropdown_data.dart';
import 'package:custom_dropdown_data/src/custom_dropdown_data_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

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

  DropdownMenuItem<int> _buildDropdownItem(CustomDropdownDataModel model) {
    return DropdownMenuItem<int>(
      child: Text(model.name),
      value: model.value,
    );
  }
}