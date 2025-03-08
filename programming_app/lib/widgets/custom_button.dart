import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 53,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // مهم عشان التدرج يطبق على كل الزرار
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(  borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.purple,

              ],

            ),

          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xffF9F9F9),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

