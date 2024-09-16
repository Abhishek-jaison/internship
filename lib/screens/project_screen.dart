import 'package:flutter/material.dart';
import 'package:intern_project/components/contents.dart';
import 'package:intern_project/components/search.dart';
import 'package:intern_project/constants/assets.dart';
import 'package:intern_project/constants/colors.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main content of the page
        Column(
          children: [
            SearchField(),
            Expanded(child: Contents()), // Ensure Contents takes the remaining space
          ],
        ),
        // Fixed position button and text at the bottom center
        Positioned(
          bottom: 5.0, // Distance from the bottom
          left: MediaQuery.of(context).size.width / 2 -75, // Center horizontally
          child: Container(
            padding: EdgeInsets.only(right: 16), // Adjust padding as needed
            decoration: BoxDecoration(
              color: AppColors.primary, // Background color of the container
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, // Minimize the width of the row to fit the contents
              children: [
                FloatingActionButton(
                  onPressed: () {
                    // Action to be taken when button is pressed
                    print('Filter button pressed');
                  },
                  child: Image.asset(AppAssets.filter),
                  backgroundColor: const Color.fromARGB(0, 255, 255, 255), // Button color

                  elevation: 0, // Remove elevation to fit with the container
                ),
                 // Spacing between button and text
                Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 14.0,
                    
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
