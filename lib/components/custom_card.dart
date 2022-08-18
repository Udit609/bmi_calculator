import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({required this.colour, this.cardChild, required this.onPress});
  final Color colour;
  final Widget? cardChild;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future.delayed(Duration.zero, () async {
          onPress();
        });
      },
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
