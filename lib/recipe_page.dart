import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_page/colors.dart';
import 'package:recipe_page/dot.dart';
import 'package:recipe_page/image_container.dart';
import 'package:recipe_page/instruction.dart';
import 'package:recipe_page/nutrition.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageContainer(context),
                  const SizedBox(height: 30),
                  const Text(
                    "Simple Omelette Recipe",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "YoungSerif",
                      fontWeight: FontWeight.bold,
                      color: AppColors.stone900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "An easy and quick dish, perfect for any meal. This classic omelette combines beaten eggs cooked to perfection, optionally filled with your choice of cheese, vegetables, or meats.",
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      color: AppColors.stone900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        constraints: BoxConstraints(
                          maxWidth: constraints.maxWidth * 0.99,
                          maxHeight: constraints.maxHeight * 0.50,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.rose50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Preparation time",
                                style: GoogleFonts.outfit(
                                  fontSize: 20,
                                  //fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.brown800,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Dot(
                                  label: "Total:",
                                  value: "Approximately 10 minutes",
                                  color: AppColors.stone900),
                              const SizedBox(height: 20),
                              const Dot(
                                  label: "Preparation:",
                                  value: "5 minutes",
                                  color: AppColors.stone900),
                              const SizedBox(height: 20),
                              const Dot(
                                  label: "Cooking:",
                                  value: "5 minutes",
                                  color: AppColors.stone900),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ingredients",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "YoungSerif",
                          fontWeight: FontWeight.bold,
                          color: AppColors.brown800,
                        ),
                      ),
                      SizedBox(height: 20),
                      Dot(
                          label: "",
                          value: "2-3 large eggs",
                          color: AppColors.brown800),
                      SizedBox(height: 20),
                      Dot(
                          label: "",
                          value: "Salt, to taste",
                          color: AppColors.brown800),
                      SizedBox(height: 20),
                      Dot(
                          label: "",
                          value: "Pepper, to taste",
                          color: AppColors.brown800),
                      SizedBox(height: 20),
                      Dot(
                          label: "",
                          value: "1 tablespoon of butter or oil",
                          color: AppColors.brown800),
                      SizedBox(height: 20),
                      Dot(
                          label: "",
                          value:
                              "Optional fillings: cheese, diced vegetables, cooked meats, herbs, etc.",
                          color: AppColors.brown800),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: AppColors.stone600,
                    thickness: 0.3,
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Instructions",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "YoungSerif",
                          fontWeight: FontWeight.bold,
                          color: AppColors.brown800,
                        ),
                      ),
                     
                      const Instuctions(
                        numb: "1.",
                        label: "Beat the eggs:",
                        value:
                            "In a bowl, beat the eggs with a pinch of salt and pepper until they are well mixed. You can add a tablespoon of water or milk for a fluffier texture.",
                      ),
                
                      const Instuctions(
                        numb: "2.",
                        label: "Heat the pan:",
                        value:
                            "Place a non-stick frying pan over medium heat and add the butter or oil.",
                      ),
               
                      const Instuctions(
                        numb: "3.",
                        label: "Cook the Omelette:",
                        value:
                            "Once the butter is melted and bubbling, pour in the eggs. Tilt the pan to ensure the eggs evenly coat the surface.",
                      ),
             
                      const Instuctions(
                        numb: "4.",
                        label: "Add the fillings (Optional):",
                        value:
                            "When the eggs begin to set at the edges but are still slightly runny in the middle, sprinkle your chosen fillings over one half of the omelette.",
                      ),
          
                      const Instuctions(
                        numb: "5.",
                        label: "Fold and serve:",
                        value:
                            "As the omelette continues to cook, carefully lift one edge and fold it over the fillings. Let it cook for another minute, then slide it onto a plate.",
                      ),
                  
                      const Instuctions(
                        numb: "6.",
                        label: "Enjoy:",
                        value:
                            "Serve hot, with additional salt and pepper if needed.",
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: AppColors.stone600,
                        thickness: 0.3,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Nutrition",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "YoungSerif",
                          fontWeight: FontWeight.bold,
                          color: AppColors.brown800,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "The table below shows nutritional values per serving without the additional fillings.",
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                     
                              color: AppColors.stone900,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Nutrition(
                            label: "Calories",
                            value: "277kcal",
                          ),
                          const SizedBox(height: 5),
                          const Divider(
                            color: AppColors.stone600,
                            thickness: 0.3,
                          ),
                          const SizedBox(height: 5),
                          const Nutrition(
                            label: "Carbs",
                            value: "0g",
                          ),
                          const SizedBox(height: 5),
                          const Divider(
                            color: AppColors.stone600,
                            thickness: 0.3,
                          ),
                          const SizedBox(height: 5),
                          const Nutrition(
                            label: "Protein",
                            value: "20g",
                          ),
                          const SizedBox(height: 5),
                          const Divider(
                            color: AppColors.stone600,
                            thickness: 0.3,
                          ),
                          const SizedBox(height: 5),
                          const Nutrition(
                            label: "Fat",
                            value: "22g",
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
