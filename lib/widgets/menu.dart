import 'package:flutter/material.dart';
import 'package:scoreboard/icon/icon.dart';
import 'package:scoreboard/views/home.dart';
import 'package:scoreboard/views/soccer.dart';
import 'package:scoreboard/views/volleyball.dart';
import 'package:scoreboard/views/basketball.dart';
import 'package:scoreboard/views/futsal.dart';
import 'package:scoreboard/views/badminton.dart';
import 'package:scoreboard/views/tabletennis.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.brown,
            width: double.infinity,
            height: 138,
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage(
                        'image/scoreboard.png',
                      ),
                    ),
                  ),
                ),
                const Text(
                  "List Sports",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const MyIcons(sport: 1),
            title: const Text('Home'),
            selected: widget.index == 0,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const MyIcons(sport: 2),
            title: const Text('Basketball'),
            selected: widget.index == 1,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BasketballPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const MyIcons(sport: 3),
            title: const Text('Volleyball'),
            selected: widget.index == 2,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const VolleyballPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const MyIcons(sport: 4),
            title: const Text('Soccer'),
            selected: widget.index == 3,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SoccerPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const MyIcons(sport: 5),
            title: const Text('Futsal'),
            selected: widget.index == 4,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const FutsalPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const MyIcons(sport: 6),
            title: const Text('Badminton'),
            selected: widget.index == 5,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BadmintonPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const MyIcons(sport: 7),
            title: const Text('Tabletennis'),
            selected: widget.index == 6,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Tabletennis(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
