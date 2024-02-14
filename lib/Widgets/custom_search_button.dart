import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 24,
          ),
          onPressed: () {

          },
        ),
      ),
    );
  }
}