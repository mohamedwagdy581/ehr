import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>  with SingleTickerProviderStateMixin{
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
      children:
      [
        const CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 100,
          child: Image(
              image: AssetImage(
                AppAssets.logo,
              ),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  // Init Sliding Animation Method
  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2),);

    slidingAnimation = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero,).animate(animationController);
    animationController.forward();
  }

  // Navigate To Home Method
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          ()
      {
        GoRouter.of(context).push(AppRouter.kLoginView);
        //Get.to(() => const HomeView(), transition: Transition.fade, duration: kTransitionDuration);
      },
    );
  }
}