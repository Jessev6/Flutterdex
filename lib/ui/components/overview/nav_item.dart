import 'package:flutter/material.dart';

const double NavItemSize = 120;

class NavItem extends StatelessWidget {
  const NavItem({
    required this.child,
    required this.onClick,
  });

  final Widget child;
  final GestureTapCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(48, 0, 0, 0),
              spreadRadius: 0,
            ),

          ],
          borderRadius: BorderRadius.all(Radius.circular(8)),
          
        ),
        child: Center(child: child),
        width: NavItemSize,
        height: NavItemSize,
      ),  
    );
  }
}
