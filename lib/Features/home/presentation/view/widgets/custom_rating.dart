import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const CustomRating({
    this.mainAxisAlignment = MainAxisAlignment.start,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const FaIcon(FontAwesomeIcons.solidStar,color: Colors.yellow,),
        const SizedBox(width: 3,),
        Text("4,11",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
        const SizedBox(width: 4,),
         Text("(245)",style: Styles.textStyle14.copyWith(
           color: Colors.white60
         ),)
      ],
    );
  }
}