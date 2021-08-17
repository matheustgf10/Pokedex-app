import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/pokedex/pages/pokedex_app_bar.dart';
import 'package:pokedex_app/app/modules/pokedex/pokedex_module.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';
import 'package:pokedex_app/app/utils/constants.dart';
import 'package:pokedex_app/app/utils/pokemon_info_constants.dart';

class PokedexWidget extends StatefulWidget {
  final String title;
  PokedexWidget({Key? key, this.title = "PokedexWidget"}) : super(key: key);

  @override
  _PokedexWidgetState createState() => _PokedexWidgetState();
}

class _PokedexWidgetState extends State<PokedexWidget> {
  Pokemon? _bulbasaur = Pokemon(types: ['Grass', 'Poison']);
  Pokemon? _ivysaur = Pokemon(types: ['Grass', 'Poison']);
  Pokemon? _venusaur = Pokemon(types: ['Grass', 'Poison']);
  Pokemon? _charmander = Pokemon(types: ['Fire']);
  List<Pokemon>? _pokemons = [];

  @override
  Widget build(BuildContext context) {
    _bulbasaur?.name = 'Bulbasaur';
    _bulbasaur?.id = '#001';
    _bulbasaur?.imageUrl = 'lib/app/shared/assets/images/pokemon/bulbasaur.png';
    _bulbasaur?.types = ['Grass', 'Poison'];

    _ivysaur?.name = 'Ivysaur';
    _ivysaur?.id = '#002';
    _ivysaur?.imageUrl = 'lib/app/shared/assets/images/pokemon/ivysaur.png';
    _ivysaur?.types = ['Grass', 'Poison'];

    _venusaur?.name = 'Venusaur';
    _venusaur?.id = '#003';
    _venusaur?.imageUrl = 'lib/app/shared/assets/images/pokemon/venusaur.png';
    _venusaur?.types = ['Grass', 'Poison'];

    _charmander?.name = 'Charmander';
    _charmander?.id = '#004';
    _charmander?.imageUrl =
        'lib/app/shared/assets/images/pokemon/charmander.png';
    _charmander?.types = ['Fire'];

    _pokemons!.add(_bulbasaur!);
    _pokemons!.add(_ivysaur!);
    _pokemons!.add(_venusaur!);
    _pokemons!.add(_charmander!);

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: -40,
                  bottom: 0,
                  right: -60,
                  child: Image.asset(
                    'lib/app/shared/assets/images/pokeball.png',
                    color: IMAGE_BACKGROUND_COLOR_GREY,
                  ),
                ),
                PokedexAppBar(),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              alignment: Alignment.topLeft,
              child: Text(
                'Pokedex',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: _pokemons?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return pokemonCard(
                          pokemon: _pokemons?[index],
                          index: index,
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pokemonCard({Pokemon? pokemon, int? index}) {
    return InkWell(
      onTap: () {
        print(pokemon?.name);
        Modular.to.navigate('/pokemonInfo/$index', arguments: pokemon);
      },
      child: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 161,
                  width: 230,
                  decoration: BoxDecoration(
                    color: pokemon?.colorType ?? COLOR_POKEMON_TYPE_NORMAL,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 10),
                              child: Text(
                                pokemon?.name ?? 'POKEMON_NAME',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 5),
                              child: Text(
                                pokemon?.id ?? '#000',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            children: [
                              Flexible(
                                child: Container(
                                  height: 110,
                                  child: ListView.builder(
                                      padding: EdgeInsets.all(0),
                                      physics: ScrollPhysics(
                                          parent:
                                              NeverScrollableScrollPhysics()),
                                      itemCount: pokemon?.types?.length ?? 1,
                                      itemBuilder: (context, int index) {
                                        return Container(
                                          width: 100,
                                          margin: EdgeInsets.only(bottom: 5),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.2),
                                            border: Border.all(
                                              color: Colors.transparent,
                                              width: 5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(60),
                                          ),
                                          child: Center(
                                            child: Text(
                                              pokemon?.types?[index] ?? 'TYPE',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'lib/app/shared/assets/images/pokeball.png',
                                      color: Color.fromRGBO(255, 255, 255, 0.2),
                                      height: 110,
                                    ),
                                    Image.asset(
                                      pokemon?.imageUrl ??
                                          'lib/app/shared/assets/images/pokemon/bulbasaur.png',
                                      // color: Color.fromRGBO(0, 0, 0, 0.8),
                                      height: 110,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
