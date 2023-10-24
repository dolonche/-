import 'package:flutter/material.dart';
import 'package:testik/components/common/monthly-quest-card.dart';

class MonthlyQuest extends StatelessWidget {
  const MonthlyQuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(children: [
        MonthlyQuestCard(
          title: 'Win 5 games',
          valueText: '3 / 5',
          value: 0.6,
          index: 1,
        ),
        MonthlyQuestCard(
          title: 'Win 0 games',
          valueText: '1 / 1',
          value: 1,
          index: 2,
        ),
        MonthlyQuestCard(
          title: 'Dadad',
          valueText: '3 / 5',
          value: 0.2,
          index: 3,
        ),
      ]),
    );
  }
}
