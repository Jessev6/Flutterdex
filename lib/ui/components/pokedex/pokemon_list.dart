import 'package:flutter/material.dart';
import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/ui/components/pokedex/pokemon_card.dart';
import 'package:provider/provider.dart';

class PokemonList extends StatefulWidget {
  final Function openPokemonDetail;
  final Function onScrolledToBottom;

  PokemonList({ 
    required this.openPokemonDetail,
    required this.onScrolledToBottom,
  });

  @override
  _PokemonListState createState() => _PokemonListState(
    openPokemonDetail: openPokemonDetail,
    onScrolledToBottom: onScrolledToBottom,
  );
}

class _PokemonListState extends State<PokemonList> {
  final Function openPokemonDetail;
  final Function onScrolledToBottom;
  late ScrollController scrollController;

  _PokemonListState({
    required this.openPokemonDetail,
    required this.onScrolledToBottom,
  });

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController(
      initialScrollOffset: 0.0,
      keepScrollOffset: true,
    );

    scrollController.addListener(_scrollListener);
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
          onScrolledToBottom();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<List<Pokemon>>(builder: (context, pokemon, child) {
      return GridView.count(
        controller: scrollController,
        crossAxisCount: 3,
        children: pokemon.map(
          (p) => Provider.value(
            value: p, 
            child: GestureDetector(
              onTap: () => openPokemonDetail(p),
              child: PokemonCard(),
            ),
          )
        ).toList(),
      );
    });
  }
}
