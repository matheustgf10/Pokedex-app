import 'package:dio/dio.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';

class PokedexRepository {
  late final Dio dio;

  PokedexRepository({required this.dio});

  Future<List<Pokemon>> getPokemons() async {
    Pokemon pokemon;
    List<Pokemon> listPokemons = [];

    try {
      var response = await dio.get('pokemon?limit=10&offset=0');

      List responseJson = response.data['results'];
      int lengthResponse = responseJson.length;

      if (lengthResponse != 0) {
        for (int i = 0; i < lengthResponse; i++) {
          pokemon = Pokemon();
        }
      }
    } on DioError catch (error) {
      var statusCode = error.response!.statusCode.toString();

      print('ERROR: ' +
          error.response!.statusMessage.toString() +
          ' ' +
          statusCode);
    }

    return listPokemons;
  }
}
