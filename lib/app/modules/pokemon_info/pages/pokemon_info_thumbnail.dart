import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_store.dart';

class PokemonInfoThumbnail extends StatefulWidget {
  String? pokemonName;

  PokemonInfoThumbnail({this.pokemonName});

  @override
  _PokemonInfoThumbnailState createState() => _PokemonInfoThumbnailState();
}

class _PokemonInfoThumbnailState
    extends ModularState<PokemonInfoThumbnail, PokemonInfoStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                'lib/app/shared/assets/images/pokemon/' +
                    widget.pokemonName.toString() +
                    '.png',
                height: 200,
              )),
        ],
      ),
    );
  }
}
