
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CvDetailsContainerWidget extends StatelessWidget{
  final String item;

  const CvDetailsContainerWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.brown, width: 1.5),
      ),
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: 'ClashDisplay'
        ),
      ),
    );
  }

}