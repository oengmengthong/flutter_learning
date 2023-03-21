import 'package:flutter/material.dart';

import '../animations.dart';                         
import '../destinations.dart';
import '../bottom_bar_transition.dart';   

class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
    required this.barAnimation,
  });

final BarAnimation barAnimation; 
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    
    return BottomBarTransition(
      animation: barAnimation,
      backgroundColor: Colors.white,
      child: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        destinations: destinations.map<NavigationDestination>((d) {
          return NavigationDestination(
            icon: Icon(d.icon),
            label: d.label,
          );
        }).toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}