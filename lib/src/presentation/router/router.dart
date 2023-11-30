import 'package:e_commerce_admin/src/presentation/screens/_screens.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: HomeScreen.routeName,
  routes: [
    GoRoute(
      path: HomeScreen.routeName,
      builder: (_, state) => const HomeScreen(),
    ),
    GoRoute(
      path: ProductScreen.routeName,
      builder: (_, state) => const ProductScreen(),
    ),
    GoRoute(
      path: CategoryScreen.routeName,
      builder: (_, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: CategoryFormScreen.routeName,
      builder: (_, state) => const CategoryFormScreen(),
    ),
    GoRoute(
      path: '${CategoryFormScreen.routeName}/:id',
      builder: (_, state) {
        final id = state.pathParameters['id']!;
        return CategoryFormScreen(id: id);
      },
    )
  ],
);
