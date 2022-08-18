import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPressed, required this.buttonTitle});

  String buttonTitle;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future.delayed(Duration.zero, () async {
          onPressed();
        });
      },
      child: Container(
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
            child: Text(
          buttonTitle,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
