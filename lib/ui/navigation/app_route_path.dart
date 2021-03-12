class AppRoutePath {
  bool isMenu = true;
  bool isPokedex = false;

  bool isPokemonDetail = false;
  int nationalDexNumber = -1;

  bool isUnknown = false;

  AppRoutePath.menu();
  AppRoutePath.pokedex()
    : isPokedex = true
    ;

  AppRoutePath.pokemonDetail(dexNumber)
    : nationalDexNumber = dexNumber,
      isPokemonDetail = true,
      isPokedex = true
    ;

  AppRoutePath.unknown() : isUnknown = true;
}
