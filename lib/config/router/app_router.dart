

import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
  GoRoute(name:HomeScren.name,path: "/", builder: (context, state) => const HomeScren()),
  GoRoute(name: CardsScreen.name,path: "/cards", builder: (context, state) => const CardsScreen()),
  GoRoute(name: ButtonsScreen.name,path: "/buttons", builder: (context, state) => const ButtonsScreen()),
  ]
);
