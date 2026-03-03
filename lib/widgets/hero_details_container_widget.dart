import 'package:flutter/material.dart';

class DetailsContainerWidget extends StatelessWidget{
  final String description;

  const DetailsContainerWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.widthOf(context),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.white70, width: 1.5),
      ),
      child: Text(description,style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          fontFamily: 'ClashDisplay'
      ),),
    );
  }
}