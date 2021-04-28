import 'package:mobx/mobx.dart';

part 'pokedex_store.g.dart';

class PokedexStore = _PokedexStoreBase with _$PokedexStore;

abstract class _PokedexStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
