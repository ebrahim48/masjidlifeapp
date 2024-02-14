import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          icon: Icon(
            Icons.menu_sharp,
            color: Color(0xFF008F51),
            size: 24,
          ),
          onPressed: () {
            // Add menu button logic here
          },
        ),
      ),
    );
  }
}