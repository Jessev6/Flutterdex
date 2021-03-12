import 'package:flutter/material.dart';
import 'package:flutterdex/ui/navigation/app_route_path.dart';

const Pokedex = "pokedex";

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    String location = routeInformation.location != null ? routeInformation.location! : "";

    final uri = Uri.parse(location);
    // Handle '/'
    if (uri.pathSegments.length == 0) {
      return AppRoutePath.menu();
    }

    if (uri.pathSegments.length == 1) {
      if (uri.pathSegments[0] == Pokedex) return AppRoutePath.pokedex();
    }

    // Handle '/pokemon/:number'
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != Pokedex) return AppRoutePath.unknown();
      var remaining = uri.pathSegments[1];
      var dexNumber = int.tryParse(remaining);
      if (dexNumber == null) return AppRoutePath.unknown();
      return AppRoutePath.pokemonDetail(dexNumber);
    }

    // Handle unknown routes
    return AppRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(AppRoutePath path) {
    if (path.isUnknown) {
      return RouteInformation(location: '/404');
    }

    if (path.isPokedex) {
      return RouteInformation(location: '/$Pokedex');
    }

    if (path.isPokemonDetail) {
      return RouteInformation(location: '/$Pokedex/${path.nationalDexNumber}');
    }

    return RouteInformation(location: '/');
  }
}
