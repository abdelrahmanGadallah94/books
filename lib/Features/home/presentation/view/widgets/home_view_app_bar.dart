import 'package:books/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kMainPadding,
      child: Row(
        children: [
          Image.asset(AppAssets.kLogoImage,height: 20,),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(kSearchPageRoute);
          }, icon: const FaIcon(FontAwesomeIcons.magnifyingGlass)),
        ],
      ),
    );
  }
}
