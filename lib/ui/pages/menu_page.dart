import 'package:flutter/material.dart';
import 'package:flutterdex/ui/components/overview/nav_item.dart';

class MenuPage extends Page {
  final Function openPokedex;

  MenuPage({
    required this.openPokedex
  });

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return MenuScreen(openPokedex: openPokedex,);
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  final Function openPokedex;

  MenuScreen({
    required this.openPokedex
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 211, 10, 64),
      child: Container(
        child: Center(
          child: NavItem(
            child: Image.asset("images/pokedex.jpg", width: double.infinity, height: double.infinity,), 
            onClick: () => openPokedex()
          ),
        ),
      ),
    );
  }
}
