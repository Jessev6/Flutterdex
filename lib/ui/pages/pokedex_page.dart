import 'package:flutter/material.dart';
import 'package:flutterdex/ui/views/pokedex_view.dart';

class PokedexPage extends Page {
  final Function openPokemonDetail;

  PokedexPage({
    required this.openPokemonDetail,
  });

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return PokedexScreen(
          openPokemonDetail: openPokemonDetail,
        );
      },
    );
  }
}

class PokedexScreen extends StatelessWidget {
  final Function openPokemonDetail;

  PokedexScreen({
    required this.openPokemonDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color.fromARGB(255, 211, 10, 64),
        elevation: 0,
        title: Text("Pokédex"),
        centerTitle: true,
      ),
      body: PokedexView(
        openPokemonDetail: openPokemonDetail,
      ),
    );
  }
}
