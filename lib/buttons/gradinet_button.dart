import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0, // Button width
      height: 26.0, // Button height
      decoration: const BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(5)),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(243, 149, 25, 1), // rgba(243, 149, 25, 1)
            Color.fromRGBO(255, 205, 103, 1), // rgba(255, 205, 103, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Transparent background
          shadowColor: Colors.transparent, // No shadow
          elevation: 0, // Remove elevation
          padding: EdgeInsets.zero, // No padding
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              bottomLeft: Radius.circular(0.0),
            ),
          ),
        ),
        child: const Center(
          child: Text(
            'A', // Text "A"
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // White color for the text
            ),
          ),
        ),
      ),
    );
  }
}
