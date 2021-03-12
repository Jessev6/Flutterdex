import 'package:flutter/material.dart';
import 'package:flutterdex/data/models/pokemon.dart';
import 'package:flutterdex/ui/pages/pokemon_page.dart';
import 'package:provider/provider.dart';
import 'package:flutterdex/extensions/string_extensions.dart';

const double SpriteSize = 80;

class PokemonHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  Color colorForType(String type) => colorsPerType.containsKey(type.toUpperCase()) ? colorsPerType[type.toUpperCase()]! : colorsPerType["???"]!;

    return Consumer<Pokemon>(builder: (context, pokemon, child) {
      return Container(
        height: 132,
        width: MediaQuery.of(context).size.width,
        color: colorForType(pokemon.types![0].type!.name!),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Normal", 
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Image.network(
                          pokemon.sprites!.frontDefault!,
                          width: SpriteSize,
                          height: SpriteSize,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Image.network(
                          pokemon.sprites!.backDefault!,
                          width: SpriteSize,
                          height: SpriteSize,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Shiny", 
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Image.network(
                          pokemon.sprites!.frontShiny!,
                          width: SpriteSize,
                          height: SpriteSize,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Image.network(
                          pokemon.sprites!.backShiny!,
                          width: SpriteSize,
                          height: SpriteSize,
                        ),
                      ),
                    ]
                  )
                ],
              )
            ),
            
            // Padding(
            //   padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Name: " + pokemon.name!.capitalize(),
            //         style: TextStyle(
            //           fontSize: 16,
            //         ),
            //       ),
            //       Text(
            //         "Number: " + pokemon.id.toString(),
            //         style: TextStyle(
            //           fontSize: 16,
            //         ),
            //       ),                  
            //       Text(
            //         "Type: " + pokemon.types!.map((t) => t.type!.name!.capitalize()).join(", "),
            //         style: TextStyle(
            //           fontSize: 16,
            //         ),
            //       ),
            //     ],
            //   ), 
            // ),
          ],
        ),
      );
    });
  }

}
