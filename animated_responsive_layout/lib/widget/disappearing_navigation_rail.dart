import 'package:flutter/material.dart';

import '../animations.dart';                          // Add this import
import '../destinations.dart';
import '../nav_rail_transition.dart';     // Add this import
import 'animated_floating_action_button.dart';        // Add this import

class DisappearingNavigationRail extends StatelessWidget {
  const DisappearingNavigationRail({
    super.key,
    required this.railAnimation,                      // Add this parameter
    required this.railFabAnimation,                   // Add this parameter
    required this.backgroundColor,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final RailAnimation railAnimation;                  // Add this variable
  final RailFabAnimation railFabAnimation;            // Add this variable
  final Color backgroundColor;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    // Delete colorScheme
                                                // Modify from here ...
    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: backgroundColor,
      child: NavigationRail(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor,
        onDestinationSelected: onDestinationSelected,
        leading: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const SizedBox(height: 8),
            AnimatedFloatingActionButton(
              animation: railFabAnimation,
              elevation: 0,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
        groupAlignment: -0.85,
        destinations: destinations.map((d) {
          return NavigationRailDestination(
            icon: Icon(d.icon),
            label: Text(d.label),
          );
        }).toList(),
      ),
    );
                                               // ... to here.
  }
}