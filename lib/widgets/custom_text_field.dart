import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  CustomTextField({required this.text,required this.onChanged});
  String text;
  Function(String)? onChanged;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: TextFormField(
        onChanged:onChanged ,
        decoration: InputDecoration(
  
          filled: true,
          enabledBorder: OutlineInputBorder(
            // borderSide: const BorderSide(width: 3, color: Colors.red),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: text,
          
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xff4f67d8)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
