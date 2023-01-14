import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPriceBestSeller extends StatelessWidget {
  const CustomPriceBestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("19.99\$",style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold
        ),),
        Row(
          children: const [
            FaIcon(FontAwesomeIcons.solidStar,color: Colors.yellow,),
            SizedBox(width: 3,),
            Text("4,11"),
            SizedBox(width: 4,),
            Text("(245)")
          ],
        )
      ],
    );
  }
}