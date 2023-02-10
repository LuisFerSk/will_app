import 'package:will_app/presentation/utils/routers/named_route.dart';

enum AppRoute { unknown, signIn, dashboard }

class Routes {
  static NamedRoute get unknown => NamedRoute(appRoute: AppRoute.unknown);
  static NamedRoute get signIn => NamedRoute(appRoute: AppRoute.signIn);
  static NamedRoute get dashboard => NamedRoute(appRoute: AppRoute.dashboard);

  static List<NamedRoute> values = [
    unknown,
    signIn,
    dashboard,
  ];
}
