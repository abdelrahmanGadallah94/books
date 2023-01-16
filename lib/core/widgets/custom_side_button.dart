import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSideButton extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  const CustomSideButton({
    required this.text,
    required this.backGroundColor,
    required this.borderRadius,
    required this.textColor,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * .4,
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: borderRadius,
      ),
      child: Text(text,style: Styles.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold
      ),),
    );
  }
}
