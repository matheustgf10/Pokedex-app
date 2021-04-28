import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_store.dart';

class PokemonInfoAppBar extends StatefulWidget {
  @override
  _PokemonInfoAppBarState createState() => _PokemonInfoAppBarState();
}

class _PokemonInfoAppBarState
    extends ModularState<PokemonInfoAppBar, PokemonInfoStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Row(
        children: [
          CupertinoButton(
              child: Icon(CupertinoIcons.arrow_left, color: Colors.white),
              onPressed: () {
                Modular.to.pop();
              }),
          Spacer(),
          CupertinoButton(
            child: Observer(builder: (context) {
              return (controller.isFavorite)
                  ? Icon(CupertinoIcons.heart_fill, color: Colors.red)
                  : Icon(CupertinoIcons.heart, color: Colors.white);
            }),
            onPressed: () {
              controller.favoritePokemon();
            },
          ),
        ],
      ),
    );
  }
}
