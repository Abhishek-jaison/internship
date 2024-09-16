import 'package:flutter/material.dart';
import 'package:intern_project/buttons/gradinet_button.dart';
import 'package:intern_project/constants/colors.dart';

class CustomContentContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String primaryText;
  final String secondaryText;
  final String tertiaryText;
  final String rightImageUrl;

  const CustomContentContainer({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.primaryText,
    required this.secondaryText,
    required this.tertiaryText,
    required this.rightImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

     
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.border,
          width: 1),
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
       
      ),
      child: Row(
        children: [
          // Image on the left side
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
            ),
            child: Image.asset(imageUrl),
          ),
          const SizedBox(width: 16.0),
          // Title, primary, secondary, and tertiary texts on the right side
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Text(
                          primaryText,
                          style: const TextStyle(
                            fontSize: 10.0,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          secondaryText,
                          style: const TextStyle(
                            fontSize: 10.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 20
                      ),
                      child: GradientButton(),
                    )



                    // ClipRRect(
                    //     borderRadius: BorderRadius.circular(8.0),
                    //     child: Image.network(
                    //       rightImageUrl,
                    //       width: 40,
                    //       height: 40,
                    //       fit: BoxFit.cover,
                    //     ),),

                  
                  ],

                ),
              ],
            ),

          
          ),
        ],
      ),
    );
  }
}
