import 'package:e_commerce_admin/src/presentation/screens/_screens.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

/// The list of routes used in the app.
///
/// This list is passed to the [GetMaterialApp.getPages] property.
final List<GetPage<dynamic>> pages = <GetPage>[
  GetPage(
    name: HomeScreen.routeName,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: ProductScreen.routeName,
    page: () => const ProductScreen(),
  ),
  GetPage(
    name: ProductFormScreen.routeName,
    page: () => const ProductFormScreen(),
  ),
  GetPage(
    name: '${ProductFormScreen.routeName}/:id',
    page: () => const ProductFormScreen(),
  ),
];
