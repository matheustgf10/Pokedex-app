import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_store.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';

class PokemonInfoHeader extends StatelessWidget {
  PokemonInfoStore controller = Modular.get<PokemonInfoStore>();
  final Pokemon? pokemon;

  PokemonInfoHeader({this.pokemon});

  @override
  Widget build(BuildContext context) {
    print("PokemonInfoHeader > Controller pokemon name > " +
        controller.currentPokemon!.name.toString());
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Row(children: [
            Observer(builder: (_) {
              return Text(
                controller.currentPokemon!.name.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                ),
              );
            }),
            Spacer(),
            Observer(builder: (_) {
              return Text(
                controller.currentPokemon!.id.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              );
            }),
          ]),
          SizedBox(height: 3),
          Container(
            height: 32,
            child: Row(
              children: [
                Container(
                  width: 150,
                  child: Observer(builder: (context) {
                    return ListView.builder(
                        padding: const EdgeInsets.all(0),
                        physics: ScrollPhysics(
                          parent: NeverScrollableScrollPhysics(),
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.currentPokemon!.types!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 4),
                            padding: EdgeInsets.only(
                                top: 3, bottom: 3, left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                              border: Border.all(
                                color: Colors.transparent,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Text(
                              controller.currentPokemon!.types![index]
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                          );
                        });
                  }),
                ),
                Spacer(),
                Text(
                  pokemon!.description.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
