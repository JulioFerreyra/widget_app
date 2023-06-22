

import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
  GoRoute(name:HomeScren.name,path: "/", builder: (context, state) => const HomeScren()),
  GoRoute(name: CardsScreen.name,path: "/cards", builder: (context, state) => const CardsScreen()),
  GoRoute(name: ButtonsScreen.name,path: "/buttons", builder: (context, state) => const ButtonsScreen()),
  GoRoute(name: ProgressScreen.name, path: "/progress", builder: (context, state) => const ProgressScreen()),
  GoRoute(name: SnackbarScreen.name, path: "/snackbars", builder: (context, state) => const SnackbarScreen()),
  GoRoute(name: AnimatedScreen.name, path: "/animated", builder: (context, state) => const AnimatedScreen()),
  GoRoute(name: UiControlsScreen.name, path: "/ui-control", builder: (context, state) => const UiControlsScreen()),
  ]
);
