import 'package:airplane/ui/widget/custom_btn.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_success_book.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Well Booked 😍',
                      style: blackTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Are you ready to explore the new\nworld of experiences?',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              CustomButton(
                  route: '/main-page',
                  text: 'My Bookings',
                  width: 220,
                  height: 55,
                  top: 50,
                  bottom: 0),
            ],
          ),
        ),
      ),
    );
  }
}
