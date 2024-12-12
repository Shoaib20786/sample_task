import 'package:flutter/material.dart';

import 'size_list_item_widget.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String _selectedSize = "";

  @override
  Widget build(BuildContext context) {
    final sizes = [
      {"label": "XS", "state": SizeState.unavailable},
      {"label": "S", "state": SizeState.available},
      {"label": "M", "state": SizeState.available},
      {"label": "L", "state": SizeState.available},
      {"label": "XL", "state": SizeState.available},
    ];

    return Container(
      width: double.infinity,
      height: 60, // Fixed height for consistent layout
      margin: const EdgeInsets.only(right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: sizes
            .map((size) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizeListItemWidget(
                    label: size["label"] as String,
                    state: size["label"] == _selectedSize
                        ? SizeState.selected
                        : size["state"] as SizeState,
                    onTap: () {
                      setState(() {
                        _selectedSize = size["label"] as String;
                      });
                    },
                  ),
                ))
            .toList(),
      ),
    );
  }
}
