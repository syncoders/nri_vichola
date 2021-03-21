import 'package:get/get.dart';
import 'package:nri_vichola/View/Dashboard.dart';
import 'package:nri_vichola/View/Login/ForgotPassword.dart';
import 'package:nri_vichola/View/Login/SignUp.dart';
import 'package:nri_vichola/View/Login/Signin.dart';
import 'package:nri_vichola/View/Splash.dart';
import 'RouteConstant.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(
      name: splash,
      page: () => Splash(),
    ),
    GetPage(
      name: signIn,
      page: () => Login(),
    ),
    GetPage(
      name: dashboard,
      page: () => DashBoard(),
    ),
    GetPage(
      name: signUp,
      page: () => SignUp(),
    ),
    GetPage(
      name: forgotPassword,
      page: () => ForgotPassword(),
    ),
  ];
}
