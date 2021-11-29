import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DestimationTile extends StatelessWidget {
  final String imgpath;
  final String rating;
  final String nama;
  final String lokasi;
  final String linkdetail;

  const DestimationTile(
      {Key? key,
      required this.imgpath,
      required this.rating,
      required this.nama,
      required this.lokasi,
      required this.linkdetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, linkdetail);
      },
      child: Container(
        height: 90,
        width: 327,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          top: 16,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(imgpath),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    lokasi,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: kgoldColor,
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  rating,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
