import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const StyleText(
    this.text,
    this.fontSize, {
    this.color = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
