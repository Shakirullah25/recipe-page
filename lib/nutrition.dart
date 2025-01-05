import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_page/colors.dart';

class Nutrition extends StatelessWidget {
  final String label;
  final String value;
  const Nutrition({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: AppColors.stone900,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: GoogleFonts.outfit(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.brown800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
