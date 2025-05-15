import 'package:flutter/material.dart';
import 'package:groceries_app/config/routes/routes_names.dart';
import 'package:groceries_app/views/views.dart';

class Routes {
  static Route<dynamic> getRoute(RouteSettings route) {
    switch (route.name) {
        case RoutesNames.home:
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        case RoutesNames.login:
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        case RoutesNames.splash:
          return MaterialPageRoute(builder: (_) => const SplashScreen());
        case RoutesNames.orderComplete:
          return MaterialPageRoute(builder: (_) => const OrderCompleteScreen());
        case RoutesNames.orderFailed:
          return MaterialPageRoute(builder: (_) => const OrderFailedScreen());
        case RoutesNames.productDetails:
          return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
        case RoutesNames.checkout:
          return MaterialPageRoute(builder: (_) => const CheckoutScreen());
        case RoutesNames.favorites:
          return MaterialPageRoute(builder: (_) => const FavoritesScreen());
        case RoutesNames.myCart:
          return MaterialPageRoute(builder: (_) => const MyCartScreen()); 
        case RoutesNames.beverages:
          return MaterialPageRoute(builder: (_) => const BeveragesScreen());
        case RoutesNames.explore:
          return MaterialPageRoute(builder: (_) => const ExploreScreen());
        case RoutesNames.search:
          return MaterialPageRoute(builder: (_) => const SearchScreen());
        case RoutesNames.profile:
          return MaterialPageRoute(builder: (_) => const ProfileScreen());
        case RoutesNames.signin:
          return MaterialPageRoute(builder: (_) => const SigninScreen());
        case RoutesNames.signup:
          return MaterialPageRoute(builder: (_) => const SignupScreen());
        case RoutesNames.verification:
          return MaterialPageRoute(builder: (_) => const VerificationScreen());
        case RoutesNames.number:
          return MaterialPageRoute(builder: (_) => const NumberScreen());
        case RoutesNames.selectLocation:
          return MaterialPageRoute(builder: (_) => const SelectLocation()); 
        case RoutesNames.onboarding:
          return MaterialPageRoute(builder: (_) => const OnboardingScreen());                                           
        default:
          return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
