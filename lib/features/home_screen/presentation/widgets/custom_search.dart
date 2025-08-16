import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,

          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
        isDense: true,
        hintText: "Search",
        prefixIcon: Icon(CupertinoIcons.search, size: 25, color: Colors.grey),
        hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
      ),
    );
  }
}
