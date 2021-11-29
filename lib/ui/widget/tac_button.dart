import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class TacButton extends StatelessWidget {
  const TacButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        bottom: 30,
        top: 30,
      ),
      child: Text(
        "Terms and Conditions",
        style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
