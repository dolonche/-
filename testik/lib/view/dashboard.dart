import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/components/common/block-title.dart';
import 'package:testik/components/common/main-nav.dart';
import 'package:testik/components/common/page-header.dart';
import 'package:testik/components/dashboard/last-games.dart';
import 'package:testik/components/dashboard/monthly-quest.dart';
import 'package:testik/components/dashboard/recent-achievements.dart';
import 'package:testik/components/dashboard/your-activity.dart';
import 'package:testik/utils/constants.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String avatarPath = 'assets/img/content/avatar.png';
    Image avatarImg = Image.asset(avatarPath);
    return Scaffold(
        appBar: const PageHeader(
          imagePath: 'assets/img/content/avatar.png',
          title: 'Dashboard',
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            BlockTitle(
              title: 'Recent games',
              more: 'view more',
              marginTop: 10.0,
              marginBot: 10.0,
            ),
            LastGames(),
            BlockTitle(
              title: 'Your activity',
              marginTop: 25.0,
              marginBot: 5.0,
            ),
            YourActivity(),
            BlockTitle(
              title: 'Recent achievements',
              more: 'view all',
              marginTop: 25.0,
              marginBot: 10.0,
            ),
            RecentAchievements(),
            BlockTitle(
              title: 'Monthly quest',
              marginTop: 25.0,
              marginBot: 10.0,
            ),
            MonthlyQuest(),
          ],
        )),
        bottomNavigationBar: const MainNav());
  }
}

// class TextWidget extends StatelessWidget {
//   const TextWidget({Key key, this.text}) : super(key: key);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.all(20),
//       margin: EdgeInsets.all(5),
//       decoration:
//           BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 40),
//       ),
//     );
//   }
// }