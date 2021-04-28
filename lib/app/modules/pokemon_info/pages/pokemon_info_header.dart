import 'package:flutter/material.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';

class PokemonInfoHeader extends StatelessWidget {
  Pokemon? pokemon;

  PokemonInfoHeader({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Row(children: [
            Text(
              'Bulbasaur',
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.w800,
              ),
            ),
            Spacer(),
            Text(
              '#001',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ]),
          SizedBox(height: 3),
          Row(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Text(
                  'Grass',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Text(
                  'Poison',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(),
              Text(
                'Seed Pokemon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
