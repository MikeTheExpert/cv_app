import 'package:flutter/material.dart';

class DevDescriptionContainerWidget extends StatelessWidget {
  final String item;

  final Color color;

  const DevDescriptionContainerWidget({
    super.key,
    required this.item,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.widthOf(context) / 2,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color, width: 1.5),
      ),
      child: SingleChildScrollView(
        child: Text(
          item,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black87,
            fontFamily: 'ClashDisplay',
          ),
        ),
      ),
    );
  }
}
