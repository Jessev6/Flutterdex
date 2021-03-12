import 'package:flutter/material.dart';
import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/ui/components/pokemon/pokemon_header.dart';
import 'package:provider/provider.dart';

class PokemonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Pokemon>(builder: (context, pokemon, child) {
      return Row(
        children: [
          PokemonHeader()
        ],
      );
    });
  }
}
