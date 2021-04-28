import 'package:flutter/material.dart';

class PokemonInfoThumbnail extends StatefulWidget {
  String? pokemonName;

  PokemonInfoThumbnail({this.pokemonName});

  @override
  _PokemonInfoThumbnailState createState() => _PokemonInfoThumbnailState();
}

class _PokemonInfoThumbnailState extends State<PokemonInfoThumbnail> {
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
            ),
          ),
        ],
      ),
    );
  }
}
