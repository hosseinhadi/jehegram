// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:jahegram/app/routes/app_pages.dart';
//
// class NavigationService extends GetxService {
//   static NavigationService get to => Get.find<NavigationService>();
//
//   final navigationId = 1;
//
//   final activeIndex = 1.obs;
//   late final initialRoute = routes[1];
//
//   final subPages = [
//     if (AppPages.routes[0].children.isNotEmpty) ...(AppPages.routes[0].children)
//   ];
//
//   static const routes = [
//     Routes.HOME,
//     Routes.CHANNELS,
//     Routes.LECTURES,
//     Routes.HOMEWORKS,
//     Routes.APPOINTMENTS,
//     Routes.TASKS,
//   ];
//
//   @override
//   void onInit() {
//     ever(
//       activeIndex,
//       (int index) {
//         if (index < subPages.length) {
//           var url = subPages[index].name;
//           // print('url is $url');
//           Get.offNamed(url, id: navigationId);
//         }
//       },
//     );
//     super.onInit();
//   }
//
//   void goToIndex(int index) {
//     activeIndex.value = index;
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   processRouting(Routing? route) {
//     // final _routes = routes.list;
//     var url = route?.route?.settings.name;
//     if (url != null && routes.contains(url)) {
//       // print('$url');
//       // activeIndex(routes.indexOf(url));
//     }
//   }
//
//   GetPageRoute onGenerateRoute(RouteSettings settings) {
//     try {
//       final currentUrl = settings.name;
//       final page = subPages.firstWhere((element) => currentUrl == element.name);
//       print('current URL in onGenerateRoute is : $currentUrl');
//
//       return GetPageRoute(
//         routeName: currentUrl,
//         settings: settings,
//         transition: Transition.leftToRightWithFade,
//         // customTransition: NoShadowFadeTransition(),
//         transitionDuration: 500.milliseconds,
//         binding: page.binding,
//         page: page.page,
//       );
//     } catch (e) {
//       return GetPageRoute(
//         routeName: '\error',
//         settings: settings,
//         page: () => Center(
//           child: Text('error'),
//         ),
//       );
//     }
//   }
// }
