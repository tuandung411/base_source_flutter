import 'package:flutter/material.dart';


class AppRouter {
  late Widget page;
  // Route onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     // case Routes.main_page:
  //     //   page = const MainPage();
  //     //   return navigate(page);

  //     // case Routes.waiting_notary_detail_page:
  //     //   final args1 = settings.arguments as NotarizationInfo;
  //     //   final args2 = settings.arguments as CaseRT;
  //     //   final args3 = settings.arguments as Function;
  //     //   page = WaitingNotarizationDetailPage(
  //     //     notarizationInfo: args1,
  //     //     caseInfo: args2,
  //     //     callBackFunction: args3,
  //     //   );
  //     //   return navigate(page);
      

  //     // default:
  //     //   return MaterialPageRoute(builder: (_) => const MainPage());
  //   }
  // }

  Route<dynamic> navigate(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
