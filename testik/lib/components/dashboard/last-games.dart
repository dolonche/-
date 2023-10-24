import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/components/common/last-game-card.dart';
import 'package:testik/mock/last-games-mock.dart';
import 'package:testik/utils/constants.dart';

class LastGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 125,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 15.0),
          shrinkWrap: true,
          itemCount: lastGamesMock.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 10.0);
          },
          itemBuilder: (BuildContext context, int index) {
            return LastGameCard(
              sport: lastGamesMock[index]['sport'],
              versusName: lastGamesMock[index]['versus'],
              area: lastGamesMock[index]['area'],
              date: lastGamesMock[index]['date'],
              win: Random().nextBool(),
            );
          },
        ));
  }
}
