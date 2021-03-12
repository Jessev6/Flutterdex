import 'package:flutter/material.dart';
import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/ui/views/pokemon_view.dart';
import 'package:provider/provider.dart';
import 'package:flutterdex/extensions/string_extensions.dart';

const colorsPerType = {
  "NORMAL": Color.fromARGB(255, 168, 168, 120),
  "FIRE": Color.fromARGB(255, 240, 128, 48),
  "FIGHTING": Color.fromARGB(255, 192, 48, 40),
  "WATER": Color.fromARGB(255, 104, 144, 240),
  "FLYING": Color.fromARGB(255, 168, 144, 240),
  "GRASS": Color.fromARGB(255, 120, 200, 80),
  "POISON": Color.fromARGB(255, 160, 64, 160),
  "ELECTRIC": Color.fromARGB(255, 248, 205, 48),
  "GROUND": Color.fromARGB(255, 224, 192, 104),
  "PSYCHIC": Color.fromARGB(255, 248, 88, 136),
  "ROCK": Color.fromARGB(255, 184, 160, 56),
  "ICE": Color.fromARGB(255, 152, 216, 216),
  "BUG": Color.fromARGB(255, 168, 184, 32),
  "DRAGON": Color.fromARGB(255, 112, 56, 248),
  "GHOST": Color.fromARGB(255, 112, 88, 152),
  "DARK": Color.fromARGB(255, 35, 44, 54),
  "STEEL": Color.fromARGB(255, 184, 184, 208),
  "FAIRY": Color.fromARGB(255, 238, 153, 172),
  "???": Color.fromARGB(255, 104, 160, 144),
};

class PokemonPage extends Page {
  final Pokemon pokemon;

  PokemonPage({
    required this.pokemon,
  });

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return PokemonScreen(
          pokemon: pokemon,
        );
      },
    );
  }
}

class PokemonScreen extends StatelessWidget {
  final Pokemon pokemon;

  PokemonScreen({
    required this.pokemon,
  });

  Color colorForType(String type) => colorsPerType.containsKey(type.toUpperCase()) ? colorsPerType[type.toUpperCase()]! : colorsPerType["???"]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: colorForType(this.pokemon.types![0].type!.name!),
        elevation: 0,
        title: Text(pokemon.name!.capitalize()),
        centerTitle: true,
      ),
      body: Provider.value(
          value: this.pokemon, 
          child: PokemonView(),
      ),
    );
  }
}
