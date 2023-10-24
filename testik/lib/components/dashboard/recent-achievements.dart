import 'package:flutter/material.dart';
import 'package:testik/components/common/recent-achievements-card.dart';
import 'package:testik/mock/recent-achievements-mock.dart';

class RecentAchievements extends StatelessWidget {
  const RecentAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 122,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 15.0),
          shrinkWrap: true,
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 10.0);
          },
          itemBuilder: (BuildContext context, int index) {
            return RecentAchievementsCard(
              index: index,
              title: recentAchievementsMock[index]['title'],
              date: recentAchievementsMock[index]['date'],
            );
          },
        ));
  }
}
