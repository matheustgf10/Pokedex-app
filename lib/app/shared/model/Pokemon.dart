import 'package:flutter/material.dart';
import 'package:pokedex_app/app/utils/constants.dart';

class Pokemon {
  String? id;
  String? name;
  String? imageUrl;
  List<String>? types;
  String? description;
  String? height;
  String? weight;
  String? genderMalePercent;
  String? genderFemalePercent;
  String? eggGroup;
  String? eggCycle;
  Color? colorType;

  Pokemon({
    String? id,
    String? name,
    String? imageUrl,
    List<String>? types,
    String? description,
    String? height,
    String? weight,
    String? genderMalePercent,
    String? genderFemalePercent,
    String? eggGroup,
    String? eggCycle,
  }) {
    print('-- INITIALIZING Pokemon Class');

    switch (types?[0].toUpperCase()) {
      case 'NORMAL':
        this.colorType = COLOR_POKEMON_TYPE_NORMAL;
        break;
      case 'WATER':
        colorType = COLOR_POKEMON_TYPE_WATER;
        break;
      case 'FIRE':
        this.colorType = COLOR_POKEMON_TYPE_FIRE;
        break;
      case 'POISON':
        this.colorType = COLOR_POKEMON_TYPE_POISON;
        break;
      case 'GRASS':
        this.colorType = COLOR_POKEMON_TYPE_GRASS;
        break;
      case 'FIGHTING':
        colorType = COLOR_POKEMON_TYPE_FIGHTING;
        break;
      case 'FLYING':
        colorType = COLOR_POKEMON_TYPE_FLYING;
        break;
      case 'GROUND':
        colorType = COLOR_POKEMON_TYPE_GROUND;
        break;
      case 'ROCK':
        colorType = COLOR_POKEMON_TYPE_ROCK;
        break;
      case 'BUG':
        colorType = COLOR_POKEMON_TYPE_BUG;
        break;
      case 'STEEL':
        colorType = COLOR_POKEMON_TYPE_STEEL;
        break;
      case 'GHOST':
        colorType = COLOR_POKEMON_TYPE_GHOST;
        break;
      case 'ELECTRIC':
        colorType = COLOR_POKEMON_TYPE_ELECTRIC;
        break;
      case 'SPYCHIC':
        colorType = COLOR_POKEMON_TYPE_PSYCHIC;
        break;
      case 'ICE':
        colorType = COLOR_POKEMON_TYPE_ICE;
        break;
      case 'DRAGON':
        colorType = COLOR_POKEMON_TYPE_DRAGON;
        break;
      case 'DARK':
        colorType = COLOR_POKEMON_TYPE_DARK;
        break;
      case 'FAIRY':
        colorType = COLOR_POKEMON_TYPE_FAIRY;
        break;
      case 'UNKNOWN':
        colorType = COLOR_POKEMON_TYPE_UNKNOWN;
        break;
      case 'SHADOW':
        colorType = COLOR_POKEMON_TYPE_SHADOW;
        break;
      default:
        colorType = COLOR_POKEMON_TYPE_NORMAL;
        break;
    }
  }
}
