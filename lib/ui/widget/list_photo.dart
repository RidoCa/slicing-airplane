import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ListPhoto extends StatelessWidget {
  final String imgurl;
  const ListPhoto({Key? key, required this.imgurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6,
        right: 16,
      ),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imgurl,
            ),
          )),
    );
  }
}
