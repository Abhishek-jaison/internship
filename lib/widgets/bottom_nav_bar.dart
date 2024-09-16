import 'package:flutter/material.dart';
import 'package:intern_project/constants/assets.dart';
import 'package:intern_project/constants/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grey,
      items: [
        _buildBottomNavigationBarItem(
          index: 0,
          assetPath: AppAssets.home,
          label: 'Home',
        ),
        _buildBottomNavigationBarItem(
          index: 1,
          assetPath: AppAssets.portfolio,
          label: 'Portfolio',
        ),
        _buildBottomNavigationBarItem(
          index: 2,
          assetPath: AppAssets.input,
          label: 'input',
        ),
        _buildBottomNavigationBarItem(
          index: 3,
          assetPath: AppAssets.profile,
          label: 'profile',
        ),
       
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required int index,
    required String assetPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetPath,
        color: selectedIndex == index
            ? AppColors.primary
            : AppColors.grey,
      ),
      activeIcon: Image.asset(
        assetPath,
        color: AppColors.primary,
      ),
      label: label,
    );
  }
}
