import 'package:flutter/material.dart';
import 'package:intern_project/constants/assets.dart';
import 'package:intern_project/widgets/custom_content_container.dart';

class Contents extends StatelessWidget {
   Contents({super.key});
   final List<Map<String, String>> contentList = [
  {
      'imageUrl': AppAssets.img1,
      'title': 'Kemampuan Merangkum\nTulisan',
      'primaryText': 'BAHASA SUNDA',
      'secondaryText': 'Oleh Al-Baiqi Samaan',
      'tertiaryText': 'Tertiary text',
      'rightImageUrl': 'https://via.placeholder.com/50',
    },

    {
      'imageUrl': AppAssets.img2,
      'title': 'Kemampuan Merangkum\nTulisan',
      'primaryText': 'BAHASA SUNDA',
      'secondaryText': 'Oleh Al-Baiqi Samaan',
      'tertiaryText': 'Tertiary text',
      'rightImageUrl': 'https://via.placeholder.com/50',
    },

    {
      'imageUrl': AppAssets.img3,
      'title': 'Kemampuan Merangkum\nTulisan',
      'primaryText': 'BAHASA SUNDA',
      'secondaryText': 'Oleh Al-Baiqi Samaan',
      'tertiaryText': 'Tertiary text',
      'rightImageUrl': 'https://via.placeholder.com/50',
    },

    {
      'imageUrl': AppAssets.img4,
      'title': 'Kemampuan Merangkum\nTulisan',
      'primaryText': 'BAHASA SUNDA',
      'secondaryText': 'Oleh Al-Baiqi Samaan',
      'tertiaryText': 'Tertiary text',
      'rightImageUrl': 'https://via.placeholder.com/50',
    },

    {
      'imageUrl': AppAssets.img1,
      'title': 'Kemampuan Merangkum\nTulisan',
      'primaryText': 'BAHASA SUNDA',
      'secondaryText': 'Oleh Al-Baiqi Samaan',
      'tertiaryText': 'Tertiary text',
      'rightImageUrl': 'https://via.placeholder.com/50',
    },
    // Add more items in the list as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: contentList.length,
          itemBuilder: (context, index) {
            final content = contentList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CustomContentContainer(
                imageUrl: content['imageUrl']!,
                title: content['title']!,
                primaryText: content['primaryText']!,
                secondaryText: content['secondaryText']!,
                tertiaryText: content['tertiaryText']!,
                rightImageUrl: content['rightImageUrl']!,
              ),
            );
          },
        ),
    );
  }
}