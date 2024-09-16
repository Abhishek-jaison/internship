import 'package:flutter/material.dart';
import 'package:intern_project/constants/colors.dart';

class SearchField extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final Color borderColor;
  final double borderRadius;
  final ValueChanged<String>? onChanged;

  const SearchField({
    Key? key,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.blue,
    this.borderColor = Colors.blue,
    this.borderRadius = 12.0,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: backgroundColor, // Background color of the container
        borderRadius: BorderRadius.circular(borderRadius),
        
        border: Border.all(
      color: AppColors.border,   // Border color
      width: 1.0, // Border width
    ), // Rounded corners
      ),
      child: Row(
        children: [
          // Search input field
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: const InputDecoration(
                hintText: 'Search a project',hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
                ),
                border: InputBorder.none, // Removes the default underline
              ),
            ),
          ),
          // Search icon with a border radius and color
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.primary, // Color for the icon background
              borderRadius: BorderRadius.circular(borderRadius), // Rounded icon
            ),
            child: Icon(
              Icons.search,
              color: Colors.white, // Icon color
            ),
          ),
        ],
      ),
    );
  }
}
