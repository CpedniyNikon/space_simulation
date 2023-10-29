import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlanetDataTextField extends StatelessWidget {

  final String title;
  final TextEditingController controller;
  const PlanetDataTextField({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(27),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.green,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: title,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      style: const TextStyle(color: Colors.white),
      controller: controller,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
