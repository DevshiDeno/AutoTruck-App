import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(systemNavigationBarColor:Colors.black87),
  );

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //add flutter screen util
    return ScreenUtilInit(
        designSize: Size(360, 690), // Set your design size here
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
            onGenerateRoute: (settings) {
              return CupertinoPageRoute(builder: (context) {
                var a = AppRoutes.page
                    .where((element) => element['name'])
                    .last['page'];
                return a;
              });
            },
            debugShowCheckedModeBanner: false,
            translations: AppLocalization(),
            locale: Get.deviceLocale,
            //for setting localization strings
            fallbackLocale: Locale('en', 'US'),
            title: 'truck_booking',
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.onboarding,
            getPages: AppRoutes.pages,
          );
        });
  }
}
