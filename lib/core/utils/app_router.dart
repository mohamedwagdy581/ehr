
import 'package:go_router/go_router.dart';

import '../../modules/home/presentation/views/home.dart';
import '../../modules/login/presentation/views/login.dart';
import '../../modules/register/presentation/views/register.dart';
import '../../modules/splash/presentation/views/splash_view.dart';

abstract class AppRouter
{
  static const kLoginView = '/loginView';
  static const kResetPasswordView = '/resetPasswordView';
  static const kHomeView = '/homeView';
  static const kRegisterView = '/registerView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      // Reset Password Rout
      /*GoRoute(
        path: kResetPasswordView,
        builder: (context, state) => const HomeView(),
      ),*/
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),

      /*GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),*/
    ],
  );
}