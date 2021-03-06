import 'package:get/get.dart';
import 'package:nri_vichola/View/AboutUs.dart';
import 'package:nri_vichola/View/Chat/ChatDeatils.dart';
import 'package:nri_vichola/View/ContactUs.dart';
import 'package:nri_vichola/View/Dashboard.dart';
import 'package:nri_vichola/View/Login/ForgotPassword.dart';
import 'package:nri_vichola/View/Login/SignUp.dart';
import 'package:nri_vichola/View/Login/Signin.dart';
import 'package:nri_vichola/View/MyProfile/MyProfile.dart';
import 'package:nri_vichola/View/SetPreference.dart';
import 'package:nri_vichola/View/Splash.dart';
import 'package:nri_vichola/View/Subscription/SubscribeList.dart';
import 'package:nri_vichola/View/TermsAndCondition.dart';
import 'package:nri_vichola/View/UserProfile.dart';
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
    GetPage(name: chatDetails, page: ()=>ChatDetails()),
    GetPage(name: aboutUs, page: ()=>AboutUs()),
    GetPage(name: tremsAndCondition, page: ()=>TremsAndCondition()),
    GetPage(name: subscriptionLiat, page: ()=>SubscriptionLiat()),
    GetPage(name: userProfile, page: ()=>UserProfile()),
    GetPage(name: setPreference, page: ()=>SetPreference()),
    GetPage(name: myProfile, page: ()=>MyProfile()),
    GetPage(name: contactUs, page: ()=>ContactUs())


  ];
}
