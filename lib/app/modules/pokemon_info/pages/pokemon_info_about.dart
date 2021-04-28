import 'package:flutter/material.dart';

class PokemonInfoAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            child: Text(
                'In the Pokémon franchise, Bulbasaur are small, squat amphibian and plant Pokémon that move on all four legs, and have light blue-green bodies with darker blue-green spots. As a Bulbasaur undergoes evolution into Ivysaur and then later into Venusaur, the bulb on its back blossoms into a large flower.',
                style: TextStyle(color: Colors.black)),
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text('Height'),
                      ),
                      Container(
                        child: Text('2\'3.6\"(0.70 cm)'),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        child: Text('Weight'),
                      ),
                      Container(
                        child: Text('15.2 lbs (6.9 Kg)'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
              child: Column(
            children: [
              Row(
                children: [
                  Container(child: Text('Gender')),
                  SizedBox(width: 50),
                  Container(
                    child: Image.asset(
                      'lib/app/shared/assets/images/man.png',
                      height: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(child: Text('87,5%')),
                  SizedBox(width: 20),
                  Container(
                    child: Image.asset(
                      'lib/app/shared/assets/images/woman.png',
                      height: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(child: Text('12,5%')),
                ],
              ),
              Row(
                children: [
                  Container(child: Text('Egg Group')),
                  SizedBox(width: 30),
                  Container(child: Text('Monster')),
                ],
              ),
              Row(
                children: [
                  Container(child: Text('Egg Cycle')),
                  SizedBox(width: 30),
                  Container(child: Text('Grass')),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
