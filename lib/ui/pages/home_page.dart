import 'package:airplane/ui/widget/dest.dart';
import 'package:airplane/ui/widget/dest_tile.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img_profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                imgpath: 'assets/images/dest1.png',
                rating: '4.8',
                nama: 'Lake Ciliwung',
                lokasi: 'Tangerang',
              ),
              DestinationCard(
                imgpath: 'assets/images/dest2.png',
                rating: '4.7',
                nama: 'White Houses',
                lokasi: 'Spain',
              ),
              DestinationCard(
                imgpath: 'assets/images/dest3.png',
                rating: '4.8',
                nama: 'Hill Heyo',
                lokasi: 'Monaco',
              ),
              DestinationCard(
                imgpath: 'assets/images/dest4.png',
                rating: '5.0',
                nama: 'Menarra',
                lokasi: 'Monaco',
              ),
              DestinationCard(
                imgpath: 'assets/images/dest5.png',
                rating: '4.8',
                nama: 'Payung Teduh',
                lokasi: 'Singapore',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            DestimationTile(
              imgpath: 'assets/images/dest6.png',
              nama: 'Danau Beratan',
              lokasi: 'Singajara',
              rating: '4.5',
              linkdetail: '/detail-page',
            ),
            DestimationTile(
              imgpath: 'assets/images/dest7.png',
              nama: 'Sydney Opera',
              lokasi: 'Australia',
              rating: '4.7',
              linkdetail: '/detail-page',
            ),
            DestimationTile(
              imgpath: 'assets/images/dest8.png',
              nama: 'Payung Teduh',
              lokasi: 'Singapore',
              rating: '4.5',
              linkdetail: '/detail-page',
            ),
            DestimationTile(
              imgpath: 'assets/images/dest9.png',
              nama: 'Roma',
              lokasi: 'Italy',
              rating: '4.8',
              linkdetail: '/detail-page',
            ),
            DestimationTile(
              imgpath: 'assets/images/dest10.png',
              nama: 'Hill Hey',
              lokasi: 'Monaco',
              rating: '4.7',
              linkdetail: '/detail-page',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
