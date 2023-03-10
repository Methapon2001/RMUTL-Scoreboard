import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoreboard/widgets/menu.dart';
import 'package:scoreboard/widgets/teamname.dart';
import 'package:scoreboard/models/tabletennis/score.dart';
import 'package:scoreboard/widgets/button_score.dart';
import 'package:scoreboard/widgets/button_set.dart';
import 'package:scoreboard/widgets/button_quarter.dart';

class Tabletennis extends StatefulWidget {
  const Tabletennis({super.key});

  @override
  State<Tabletennis> createState() => _TabletennisState();
}

class _TabletennisState extends State<Tabletennis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TableTennis"),
      ),
      endDrawer: const MenuDrawer(index: 6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: <Widget>[
                      const TeamName(team: 1),
                      Text('${context.watch<ScoreTabletennis>().getScoreTeam1}',
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                      const ButtonScore(
                          sport: 6, team: 1, increment: 1, decrement: 1),
                      const Text(
                        'SET Team A',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const ButtonSet(sport: 6,team: 1),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const TeamName(team: 2),
                      Text('${context.watch<ScoreTabletennis>().getScoreTeam2}',
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                      const ButtonScore(
                          sport: 6, team: 2, increment: 1, decrement: 1),
                      const Text(
                        'SET Team B',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const ButtonSet(sport: 6,team: 2),
                    ],
                  ),
                ],
              ),
              const ButtonQuarter(sport: 6),
            ],
          ),
        ),
      ),
    );
  }
}