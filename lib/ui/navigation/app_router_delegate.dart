import 'package:flutter/material.dart';
import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/ui/navigation/app_route_path.dart';
import 'package:flutterdex/ui/pages/menu_page.dart';
import 'package:flutterdex/ui/pages/pokedex_page.dart';
import 'package:flutterdex/ui/pages/pokemon_page.dart';
import 'package:flutterdex/ui/pages/unknown_page.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  bool _is404 = false;
  bool _inPokedex = false;
  bool _inDetail = false;
  Pokemon? _selectedPokemon;


  AppRoutePath get currentConfiguration {
    if (_is404) {
      return AppRoutePath.unknown();
    }

    return _inDetail 
      ? _selectedPokemon == null 
      ? AppRoutePath.unknown() 
      : AppRoutePath.pokemonDetail(_selectedPokemon!.id)
      : _inPokedex
      ? AppRoutePath.pokedex()
      : AppRoutePath.menu();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MenuPage(openPokedex: _navigateToPokedex),
        if (_is404) UnknownPage(),
        if (_inPokedex) PokedexPage(
          openPokemonDetail: _navigateToDetail,
        ),
        if (_inDetail && _selectedPokemon != null) PokemonPage(
          pokemon: _selectedPokemon!
        ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        if (_inDetail) {
          _inDetail = false;
          _selectedPokemon = null;
        } else if (_inPokedex) {
          _inPokedex = false;
        }

        _is404 = false;
        notifyListeners();
        return true;
      },
    );
  }

  void _navigateToPokedex() {
    _inPokedex = true;
    notifyListeners();
  }

  void _navigateToDetail(Pokemon pokemon) {
    _selectedPokemon = pokemon;
    _inDetail = true;
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath path) {
    if (path.isUnknown) {
      _is404 = true;
      return Future.value();
    }

    if (path.isMenu) {
      _selectedPokemon = null;
      _inDetail = false;
      _inPokedex = false;
      _is404 = false;
      return Future.value();
    } 

    if (path.isPokemonDetail) {
      if (path.nationalDexNumber < 0 || path.nationalDexNumber > 898) {
        _is404 = true;
        return Future.value();
      }

      // Dees is ne bug dak nog moe fixen
      _selectedPokemon = null;

      _inDetail = true;
      _inPokedex = true;
      _is404 = false;
      return Future.value();
    } else if (path.isPokedex) {
      _selectedPokemon = null;
      _inDetail = false;
      _inPokedex = true;
      _is404 = false;
      return Future.value();
    } else if (path.isMenu) {
      _selectedPokemon = null;
      _inDetail = false;
      _inPokedex = false;
      _is404= false;
      return Future.value();
    }

    return Future.value();
  }
}
