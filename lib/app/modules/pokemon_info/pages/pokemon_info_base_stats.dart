import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_store.dart';

class PokemonInfoBaseStats extends StatefulWidget {
  @override
  _PokemonInfoBaseStatsState createState() => _PokemonInfoBaseStatsState();
}

class _PokemonInfoBaseStatsState
    extends ModularState<PokemonInfoBaseStats, PokemonInfoStore> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print('MAX HEIGHT: ' + constraints.maxHeight.toString());
      return ListView(
        children: [
          Container(
            height: (constraints.maxHeight < 360)
                ? constraints.maxHeight * 3
                : constraints.maxHeight * 1.7,
            width: constraints.maxWidth,
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Flexible(
                    child: BaseStat(
                        title: 'HP',
                        value: 45,
                        linearProgressIndicatorColor: Colors.redAccent)),
                Flexible(
                    child: BaseStat(
                        title: 'Attack',
                        value: 60,
                        linearProgressIndicatorColor: Colors.greenAccent)),
                Flexible(
                    child: BaseStat(
                        title: 'Defense',
                        value: 48,
                        linearProgressIndicatorColor: Colors.redAccent)),
                Flexible(
                    child: BaseStat(
                        title: 'Sp. Atk',
                        value: 65,
                        linearProgressIndicatorColor: Colors.greenAccent)),
                Flexible(
                    child: BaseStat(
                        title: 'Sp. Def',
                        value: 65,
                        linearProgressIndicatorColor: Colors.greenAccent)),
                Flexible(
                    child: BaseStat(
                        title: 'Speed',
                        value: 45,
                        linearProgressIndicatorColor: Colors.redAccent)),
                Flexible(
                    child: BaseStat(
                        title: 'Total',
                        value: 317,
                        linearProgressIndicatorColor: Colors.greenAccent)),
                SizedBox(height: 30),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Type defenses',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'The effectiveness of each type on Charmander',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

class BaseStat extends StatefulWidget {
  final String title;
  final int value;
  final Color linearProgressIndicatorColor;
  const BaseStat(
      {Key? key,
      this.title = '',
      this.value = 0,
      this.linearProgressIndicatorColor = Colors.red})
      : super(key: key);

  @override
  _BaseStatState createState() => _BaseStatState();
}

class _BaseStatState extends State<BaseStat> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      upperBound:
          (widget.value <= 100) ? widget.value / 100 : widget.value / 1000,
      lowerBound: 0.0,
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..addListener(() {
        setState(() {});
      });
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.slowMiddle);
    animation.addStatusListener((AnimationStatus status) {});
    animationController.repeat(reverse: false);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.centerLeft,
        height: constraints.maxHeight * 0.2,
        width: constraints.maxWidth,
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: 50,
              child: Text(
                widget.title,
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Spacer(),
            Container(
              child: Text(widget.value.toString()),
            ),
            Spacer(),
            Container(
              alignment: Alignment.centerRight,
              width: 200,
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(
                    widget.linearProgressIndicatorColor),
                value: animationController.value,
              ),
            ),
          ],
        ),
      );
    });
  }
}
