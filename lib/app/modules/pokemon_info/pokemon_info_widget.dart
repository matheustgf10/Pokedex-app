import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_app_bar.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_body.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_header.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_thumbnail.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';
import 'package:pokedex_app/app/shared/pages/spinned_pokeball.dart';

class PokemonInfoWidget extends StatefulWidget {
  final String title;
  String? idHero;

  PokemonInfoWidget({
    Key? key,
    this.title = "PokemonInfoWidget",
    this.idHero,
  }) : super(key: key);

  @override
  _PokemonInfoWidgetState createState() => _PokemonInfoWidgetState();
}

class _PokemonInfoWidgetState extends State<PokemonInfoWidget> {
  final Pokemon pokemonMock = Pokemon(
      id: '#001',
      name: 'Bulbasaur',
      types: ['Grass', 'Poison'],
      description: '',
      eggCycle: '',
      eggGroup: '',
      genderFemalePercent: '',
      genderMalePercent: '',
      height: '',
      imageUrl: '',
      weight: '');

  List<String> pokemonNames = [
    'bulbasaur',
    'ivysaur',
    'venusaur',
    'charmander'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(34, 168, 126, 70),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(10 / 360),
                          child: Image.asset(
                            'lib/app/shared/assets/images/square.png',
                            height: 130,
                            color: Color.fromRGBO(255, 255, 255, 0.1),
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          child: Image.asset(
                            'lib/app/shared/assets/images/dotted.png',
                            height: 60,
                            color: Color.fromRGBO(255, 255, 255, 0.1),
                          ),
                        ),
                        // ! Ativar futturamente
                        // SpinnablePokeball(controller: _animationController),
                      ],
                    ),
                  ),
                  PokemonInfoAppBar(),
                ],
              ),
              PokemonInfoHeader(pokemon: pokemonMock),
              Spacer(),
              Container(
                child: CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index, int i) =>
                      Container(
                    child:
                        PokemonInfoThumbnail(pokemonName: pokemonNames[index]),
                  ),
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.6,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: PokemonInfoBody(pokemon: pokemonMock),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
