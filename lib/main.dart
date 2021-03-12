import 'package:flutter/material.dart';
import 'package:flutterdex/ui/navigation/app_route_information_parser.dart';
import 'package:flutterdex/ui/navigation/app_router_delegate.dart';

void main() {
  runApp(FlutterDexApp());
}

class FlutterDexApp extends StatefulWidget {
  @override
  _FlutterDexAppState createState() => _FlutterDexAppState();
}

class _FlutterDexAppState extends State<FlutterDexApp> {

  AppRouterDelegate _routerDelegate = AppRouterDelegate();
  AppRouteInformationParser _routeInformationParser = AppRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flutterdex",
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser, 
    );
  }
}
