import 'package:auto_route/auto_route.dart';

import 'package:calorie_tracker/core/presentation/root_page.dart';
import 'package:calorie_tracker/home/presentation/home_page.dart';
import 'package:calorie_tracker/macronutrients/presentation/macronutrients_page.dart';
import 'package:calorie_tracker/profile/presentation/settings_page.dart';
import 'package:calorie_tracker/splash/presentation/splash_page.dart';
import 'package:calorie_tracker/weight_tracker/presentation/weight_tracker_page.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    CustomRoute(
      path: '/splash',
      initial: true,
      page: SplashPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: '/root',
      page: RootPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(
          path: 'home',
          page: EmptyRouterPage,
          name: 'HomeRouter',
          children: [
            AutoRoute(
              page: HomePage,
              path: '',
            ),
          ],
        ),
        AutoRoute(
          page: WeightTrackerPage,
          path: '',
        ),
        AutoRoute(
          page: MacronutrientsPage,
          path: '/macronutrients',
        ),
        AutoRoute(
          page: SettingsPage,
          path: '/settings',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
