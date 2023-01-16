import 'package:flutter/material.dart';

import 'custom_side_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextButton(onPressed: (){}, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CustomSideButton(
            textColor: Colors.black,
            text: "12.99\$",
            backGroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            )),
        CustomSideButton(
            textColor: Colors.white,
            text: "Free Preview",
            backGroundColor: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
        ),

      ],
    ));
  }
}