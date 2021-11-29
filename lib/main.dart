import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/bonus_pages.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/pages/choose_seat.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:airplane/ui/pages/sign_up.dart';
import 'package:airplane/ui/pages/splash_page.dart';
import 'package:airplane/ui/pages/success_checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/get_started.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStarted(),
          '/sign-up': (context) => SignUp(),
          '/bonus': (context) => BonusPage(),
          '/main-page': (context) => MainPage(),
          '/home-page': (context) => HomePage(),
          '/detail-page': (context) => DetailPage(),
          '/choose-seat': (context) => ChooseSeatPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success-checkout': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
