import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class TopSearches extends StatelessWidget {
  const TopSearches({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected: (value) {},
      selected: false,
      side: const BorderSide(color: defaultColor),
      backgroundColor: bgColor,
      padding: const EdgeInsets.all(10),
      label: Text(label,
          style: const TextStyle(color: defaultColor, fontSize: 17)),
    );
  }
}
