import 'package:will_app/presentation/utils/routers/named_route.dart';

enum AppRoute { unknown, signIn, dashboard, loading }

class Routes {
  static NamedRoute get unknown => NamedRoute(appRoute: AppRoute.unknown);
  static NamedRoute get signIn => NamedRoute(appRoute: AppRoute.signIn);
  static NamedRoute get dashboard => NamedRoute(appRoute: AppRoute.dashboard);
  static NamedRoute get loading => NamedRoute(appRoute: AppRoute.loading);

  static List<NamedRoute> values = [
    unknown,
    signIn,
    dashboard,
    loading,
  ];
}
