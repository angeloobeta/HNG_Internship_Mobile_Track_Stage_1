

import 'imports/generalImport.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  debugLogDiagnostics: false,
  initialLocation: '/',
  routes: [
   
    // GoRoute(
    //   path: '/verify',
    //   builder: (context, state) => DashBoard(email: state.queryParams['email']!,)),
  ],
);
