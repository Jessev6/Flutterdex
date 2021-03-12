import 'package:flutter/material.dart';
import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/ui/components/pokedex/pokemon_list.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:provider/provider.dart';

const Limit = 30;
const Max = 898;

class PokedexView extends StatefulWidget {
  final Function openPokemonDetail;

  PokedexView({
    required this.openPokemonDetail,
  });

  @override
  _PokedexViewState createState() => _PokedexViewState(
    openPokemonDetail: openPokemonDetail,
  );
}

class _PokedexViewState extends State<PokedexView> {
  final Function openPokemonDetail;
  final List<Pokemon> pokemon = List.of([]);

  _PokedexViewState({
    required this.openPokemonDetail,
  });

  Uri get query {
    final limit = Max  - pokemon.length - Limit <= 0 ? Max  - pokemon.length : Limit;

    return Uri.https(
      "pokeapi.co", 
      "/api/v2/pokemon", 
      { 'limit': limit.toString(), 'offset': pokemon.length.toString() }
    );
  } 

  @override
  void initState() {
    loadMorePokemon();
    super.initState();
  }

  void loadMorePokemon() async {
    if (this.pokemon.length >= Max) return;
    debugPrint(query.toString());
    var response = await http.get(query);
    
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      List<Pokemon> pokemon = jsonResponse['results'].map((result) => Pokemon.fromJson(result)).toList().cast<Pokemon>();
      
      setState(() {
        this.pokemon.addAll(pokemon);
        loadPokemonDetails();
      });
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
    }
  }

  void loadPokemonDetails() async {
      this.pokemon.asMap().forEach((i, p) { 
        if (p.url != null) {
          loadPokemon(p).then((value) => 
          setState(() {
            this.pokemon[i] = value;
          }));
        }
      });
  }

  Future<Pokemon> loadPokemon(Pokemon p) async {
    var response = await http.get(Uri.parse(p.url!));
    if (response.statusCode != 200) {
      return p;
    }

    return Pokemon.fromJson(convert.jsonDecode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: this.pokemon, 
      child: PokemonList(
        openPokemonDetail: openPokemonDetail,
        onScrolledToBottom: loadMorePokemon,
      )
    );
  }
}
