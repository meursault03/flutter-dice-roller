Flutter Dice Roller 🎲

This project is a simple mobile application built with Flutter. It serves as a practical playground to understand the core concepts of the framework, specifically focusing on widget composition and state management.

Project Overview

The application displays a gradient background with a central interactive dice image. When the "Roll Dice" button is pressed, the image updates to show a random face from 1 to 6.

Key Concepts Implemented

1. Widget Architecture

Modularization: Instead of keeping all code in main.dart, the UI is split into small, reusable custom widgets.

Composition: Using Column, Center, and Container to structure the layout.

2. State Management (The Core Logic)

This project explicitly separates static UI from interactive UI:

StatelessWidget (GradientContainer): This widget handles the background decoration. It receives configuration (colors) via its constructor but never changes its internal state once built.

StatefulWidget (DiceRoller): This widget manages the active dice image. It utilizes setState() to trigger a UI rebuild whenever the random number generation logic is executed.

3. Assets & Styling

Images: Loading local assets from the assets/images/ directory and registering them in pubspec.yaml.

Custom Text: A reusable StyleText widget that encapsulates font styling (Google Fonts) and color logic.

Project Structure

lib/main.dart: The entry point. Sets up the MaterialApp and scaffolds the screen.

lib/gradient_container.dart: A stateless wrapper that defines the visual theme (gradient) and hosts the content.

lib/dice_roller.dart: Contains the DiceRoller (public widget) and _DiceRollerState (private logic) to handle user interaction.

lib/style_text.dart: A utility widget to ensure consistent text styling across the app.

How to Run

Ensure you have the Flutter SDK installed.

Clone this repository.

Run flutter pub get to install dependencies (like google_fonts).

Run flutter run to launch the app on your emulator or connected device.
