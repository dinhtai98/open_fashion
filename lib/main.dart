import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_fashion/global/bloc_providers.dart';
import 'package:open_fashion/global/locator.dart';
import 'package:open_fashion/global/my_router_observer.dart';
import 'package:open_fashion/global/router.dart';
import 'package:open_fashion/utils/navigation_utils.dart';
import 'package:open_fashion/utils/theme_utils.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  mainDelegate();
}

Future<void> mainDelegate() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.storage.request();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...blocProviders],
      child: ScreenUtilInit(
        designSize: const Size(375, 832),
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Open fashion',
            navigatorKey: NavigationUtils.navigatorKey,
            onGenerateRoute: (settings) => MyRouter.generateRoute(settings),
            navigatorObservers: [MyRouteObserver()],
            initialRoute: MyRouter.splash,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
