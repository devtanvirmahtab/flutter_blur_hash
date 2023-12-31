import 'package:flutter/material.dart';

class ImageSelect extends StatelessWidget {
  final ImageProvider imageProvider;
  final bool isSelected;

  const ImageSelect(
      {super.key, required this.imageProvider, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: isSelected ? Border.all(color: Colors.blue, width: 2) : null,
        ),
        child: Image(
          image: imageProvider,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
