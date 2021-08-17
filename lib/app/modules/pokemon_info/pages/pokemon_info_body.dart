import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_about.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_base_stats.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pages/pokemon_info_evolution.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';
import 'package:pokedex_app/app/utils/pokemon_info_constants.dart';

class PokemonInfoBody extends StatelessWidget {
  Pokemon? pokemon;

  List<String> urlImgPokemon = [
    "lib/app/shared/assets/images/pokemon/bulbasaur.png",
    "lib/app/shared/assets/images/pokemon/ivysaur.png",
    "lib/app/shared/assets/images/pokemon/venusaur.png",
    "lib/app/shared/assets/images/pokemon/charmander.png",
  ];

  PokemonInfoBody({this.pokemon});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print("TAMANHO DA TELA: " + height.toString());

    return GestureDetector(
      onVerticalDragEnd: (_) {
        print("ARRASTA PRA CIMA PRA MAIS");
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.white,
          ),
          height: (height > 700) ? height * 0.54 : height * 0.389,
          padding: EdgeInsets.only(top: 50),
          child: DefaultTabController(
            initialIndex: 0,
            length: 4,
            child: Container(
              child: Column(
                children: [
                  TabBar(
                    unselectedLabelColor: Color.fromRGBO(38, 38, 38, 0.85),
                    labelColor: Colors.black,
                    indicatorColor: Colors.deepPurpleAccent,
                    labelPadding: EdgeInsets.all(1),
                    tabs: [
                      Tab(text: 'About'),
                      Tab(text: 'Base Stats'),
                      Tab(text: 'Evolution'),
                      Tab(text: 'Moves'),
                    ],
                  ),
                  Flexible(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.33,
                      child: TabBarView(
                        children: [
                          Container(
                            padding: TAB_BAR_VIEW_ITEMS_PADDING_NOBOTTOM,
                            child: PokemonInfoAbout(),
                          ),
                          Container(
                            padding: TAB_BAR_VIEW_ITEMS_PADDING_NOBOTTOM,
                            child: PokemonInfoBaseStats(),
                          ),
                          Container(
                            padding: TAB_BAR_VIEW_ITEMS_PADDING_NOBOTTOM,
                            child: PokemonInfoEvolution(),
                          ),
                          Container(
                            padding: TAB_BAR_VIEW_ITEMS_PADDING_NOBOTTOM,
                            child: Text('4',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
