import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashPage(),
      initialRoute: SplashPage.id,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
