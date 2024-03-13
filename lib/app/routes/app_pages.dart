import 'package:get/get.dart';

import '../presentation/contact/bindings/contact_binding.dart';
import '../presentation/contact/views/contact_view.dart';
import '../presentation/home/bindings/home_binding.dart';
import '../presentation/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => const ContactView(),
      binding: ContactBinding(),
    ),
  ];
}
