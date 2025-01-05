import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_page/colors.dart';

class Instuctions extends StatelessWidget {
  final String numb;
  final String label;
  final String value;
  const Instuctions({
    required this.numb,
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            numb,
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.brown800,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: "$label ",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.bold,
                      color: AppColors.stone900,
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
