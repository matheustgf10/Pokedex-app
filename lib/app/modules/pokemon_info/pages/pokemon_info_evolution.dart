import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/utils/pokemon_info_constants.dart';

class PokemonInfoEvolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Evolution Chain',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'lib/app/shared/assets/images/pokeball.png',
                          color: IMAGE_BACKGROUND_COLOR_GREY,
                          height: 100,
                        ),
                        Image.asset(
                            'lib/app/shared/assets/images/pokemon/bulbasaur.png',
                            height: 100),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Bulbasaur',
                        style: POKEMON_NAME_EVOLUTION_TAB_STYLE,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Column(
                  children: [
                    Icon(CupertinoIcons.arrow_right),
                    Text('Lvl 16'),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'lib/app/shared/assets/images/pokeball.png',
                          color: IMAGE_BACKGROUND_COLOR_GREY,
                          height: 100,
                        ),
                        Image.asset(
                            'lib/app/shared/assets/images/pokemon/ivysaur.png',
                            height: 100),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Ivysaur',
                        style: POKEMON_NAME_EVOLUTION_TAB_STYLE,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            height: 5,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'lib/app/shared/assets/images/pokeball.png',
                          color: IMAGE_BACKGROUND_COLOR_GREY,
                          height: 100,
                        ),
                        Image.asset(
                            'lib/app/shared/assets/images/pokemon/ivysaur.png',
                            height: 100),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Ivysaur',
                        style: POKEMON_NAME_EVOLUTION_TAB_STYLE,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Column(
                  children: [
                    Icon(CupertinoIcons.arrow_right),
                    Text('Lvl 34'),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'lib/app/shared/assets/images/pokeball.png',
                          color: IMAGE_BACKGROUND_COLOR_GREY,
                          height: 100,
                        ),
                        Image.asset(
                            'lib/app/shared/assets/images/pokemon/venusaur.png',
                            height: 100),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Venusaur',
                        style: POKEMON_NAME_EVOLUTION_TAB_STYLE,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
