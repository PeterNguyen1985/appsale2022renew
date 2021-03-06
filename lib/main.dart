import 'package:flutter/material.dart';
import 'package:appsale2022renew/common/app_constant.dart';
import 'package:appsale2022renew/presentation/features/cart/cart_screen.dart';
import 'package:appsale2022renew/presentation/features/login/login_screen.dart';
import 'package:appsale2022renew/presentation/features/product/product_screen.dart';
import 'package:appsale2022renew/presentation/features/sign_up/sign_up_screen.dart';
import 'package:appsale2022renew/presentation/features/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppConstant.LOGIN_ROUTE_NAME : (context) => LoginScreen(),
        AppConstant.SIGNUP_ROUTE_NAME : (context) => SignUpScreen(),
        AppConstant.SPLASH_ROUTE_NAME : (context) => SplashScreen(),
        AppConstant.PRODUCT_ROUTE_NAME : (context) => ProductScreen(),
        AppConstant.CART_ROUTE_NAME : (context) => CartScreen(),
      },
      initialRoute: AppConstant.SPLASH_ROUTE_NAME,
    );
  }
}
