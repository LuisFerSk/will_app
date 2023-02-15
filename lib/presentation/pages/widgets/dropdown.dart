import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    required this.label,
    required this.list,
    required this.value,
    required this.onChange,
  });

  final String label;
  final Map<String, String> list;
  final String? value;
  final Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      value: value,
      icon: const Icon(Icons.arrow_downward),
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
      ),
      onChanged: onChange,
      items: _getItems(),
    );
  }

  List<DropdownMenuItem<String>> _getItems() {
    List<DropdownMenuItem<String>> items = [];

    list.forEach((value, label) {
      items.add(
        DropdownMenuItem(
          value: value,
          child: Text(
            label,
          ),
        ),
      );
    });

    return items;
  }
}
