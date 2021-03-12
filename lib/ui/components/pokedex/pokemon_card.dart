import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/extensions/string_extensions.dart';

class PokemonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Pokemon>(builder: (context, pokemon, child) {
      return Center(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8))

        ),
        width: 120,
        height: 120,
        child: Stack(
          children: [
            if (pokemon.sprites != null && pokemon.sprites!.frontDefault != null) 
              Center(
                child: Image.network(pokemon.sprites!.frontDefault!),
              )
            else
              Center( 
                child: CircularProgressIndicator(),
              ),
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // color: Color.fromARGB(64, 0, 0, 0),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(pokemon.name!.capitalize()),
              ),
            ),
          ],
        )      
      ),
      );
    });
  }
}
