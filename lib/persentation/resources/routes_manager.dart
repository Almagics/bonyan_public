import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bonyan/persentation/Main/main_view.dart';
import 'package:bonyan/persentation/forgot_password/forget_password_view.dart';
import 'package:bonyan/persentation/login/login_View.dart';
import 'package:bonyan/persentation/register/register_view.dart';
import 'package:bonyan/persentation/resources/strings_manager.dart';
import 'package:bonyan/persentation/splash/splash_view.dart';
import 'package:bonyan/persentation/store_details/store_details_view.dart';

import '../onboarding/onboarding_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String onBoarding = "/onBoarding";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());

      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());

      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      default:
        return unDefiendRoute();
    }
  }

  static Route<dynamic> unDefiendRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
            appBar: AppBar(
                title: const Text(
                    AppStrings.noRoutValue) // todo move to strings manager
                ),
            body: const Center(
              child: Text(AppStrings.noRoutValue),
            ) // todo move to strings manager
            ));
  }
}