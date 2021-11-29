import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kavailseatColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kunavailseatColor;
        default:
          return kunavailseatColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kWhiteColor;
        default:
          return kWhiteColor;
      }
    }

    selectedSeat() {
      if (status == 1) {
        return Center(
          child: Text(
            "YOU",
            style: whiteTextStyle.copyWith(fontWeight: semiBold),
          ),
        );
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: borderColor(),
        ),
      ),
      child: selectedSeat(),
    );
  }
}
