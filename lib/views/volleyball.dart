import "package:flutter/material.dart";
import 'package:scoreboard/widgets/menu.dart';
import 'package:provider/provider.dart';
import 'package:scoreboard/models/volleyball/score.dart';
import 'package:scoreboard/widgets/button_score.dart';
import 'package:scoreboard/widgets/button_set.dart';
import 'package:scoreboard/widgets/button_quarter.dart';

class VolleyballPage extends StatefulWidget {
  const VolleyballPage({super.key});

  @override
  State<VolleyballPage> createState() => _VolleyballPageState();
}

class _VolleyballPageState extends State<VolleyballPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Volleyball"),
      ),
      endDrawer: const MenuDrawer(index: 2),
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
                      const Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text('${context.watch<ScoreVolleyball>().getScoreTeam1}',
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                      const ButtonScore(
                          sport: 2, team: 1, increment: 1, decrement: 1),
                      const Text(
                        'SET Team A',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const ButtonSet(team: 1),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text('${context.watch<ScoreVolleyball>().getScoreTeam2}',
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                      const ButtonScore(
                          sport: 2, team: 2, increment: 1, decrement: 1),
                      const Text(
                        'SET Team B',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const ButtonSet(team: 2),
                    ],
                  ),
                ],
              ),
              const Text(
                'Quarter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const ButtonQuarter(sport: 2),
            ],
          ),
        ),
      ),
    );
  }
}
