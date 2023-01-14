import 'package:books/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.kLogoImage),

          AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, child) => SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  kSplashTitle,
                  textAlign: TextAlign.center,
                ),
              ),
          ),

      ],
    );
  }

  // init sliding method
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: kDuration2);
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  // navigate to home method
  void navigateToHome() {
    Future.delayed(kDuration3,() {
      // Get.to(
      //         () => const HomeView(),
      //     transition: Transition.fade,
      //     duration: kTransitionDuration
      // );

      context.go(kHomePageRoute);
    },);
  }
}
