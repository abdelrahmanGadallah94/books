import 'package:books/Features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:books/Features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Column(
          children: const [
            HomeViewAppBar(),
            HomeViewBody()
          ],
        ),

    );
  }
}
