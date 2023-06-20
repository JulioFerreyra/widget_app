

import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
  GoRoute(path: "/", builder: (context, state) => const HomeScren()),
  GoRoute(path: "/cards", builder: (context, state) => const CardsScreen()),
  GoRoute(path: "/buttons", builder: (context, state) => const ButtonsScreen()),
  ]
);
