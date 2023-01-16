import 'package:books/constants.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: kHintTextSearch,
        suffixIcon: const Icon(Icons.search),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(25)
      );
  }
}

