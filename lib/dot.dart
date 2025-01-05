import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_page/colors.dart';

class Dot extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const Dot({
    super.key,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            constraints: BoxConstraints(
              minWidth: 5,
              minHeight: 5,
            ),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text.rich(
              TextSpan(
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  color: AppColors.stone900,
                ),
                children: [
                  TextSpan(
                    text: "$label ",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: value,
                    style: GoogleFonts.outfit(
                      color: AppColors.stone900,
                    ),
                  ),
                ],
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
