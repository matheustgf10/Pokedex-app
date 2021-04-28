import 'package:flutter/material.dart';

class PokemonInfoBaseStats extends StatefulWidget {
  @override
  _PokemonInfoBaseStatsState createState() => _PokemonInfoBaseStatsState();
}

class _PokemonInfoBaseStatsState extends State<PokemonInfoBaseStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Container(
            child: Text('HP'),
          ),
          Spacer(flex: 1),
          Container(
            child: Text('20'),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
