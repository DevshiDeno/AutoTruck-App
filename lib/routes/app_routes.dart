import 'package:get/get.dart';
import 'package:truck_booking/presentation/bottomBar/bottom_bar.dart';
import 'package:truck_booking/presentation/customer_care_page_full_screen/binding/customer_care_page_full_binding.dart';
import 'package:truck_booking/presentation/customer_care_page_full_screen/customer_care_page_full_screen.dart';
import 'package:truck_booking/presentation/customer_care_page_screen/binding/customer_care_page_binding.dart';
import 'package:truck_booking/presentation/customer_care_page_screen/customer_care_page_screen.dart';
import 'package:truck_booking/presentation/favorites_page_screen/binding/favorites_page_binding.dart';
import 'package:truck_booking/presentation/favorites_page_screen/favorites_page_screen.dart';
import 'package:truck_booking/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:truck_booking/presentation/home_page_screen/home_page_screen.dart';
import 'package:truck_booking/presentation/lorry_detail_public_page_screen/binding/lorry_detail_public_page_binding.dart';
import 'package:truck_booking/presentation/lorry_detail_public_page_screen/truck_detail_public_page_screen.dart';
import 'package:truck_booking/presentation/menu_page_screen/binding/menu_page_binding.dart';
import 'package:truck_booking/presentation/menu_page_screen/menu_page_screen.dart';
import 'package:truck_booking/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:truck_booking/presentation/personal_profile_page_full_screen/binding/personal_profile_page_full_binding.dart';
import 'package:truck_booking/presentation/personal_profile_page_full_screen/personal_profile_page_full_screen.dart';
import 'package:truck_booking/presentation/personal_view_profile_page_screen/binding/personal_view_profile_page_binding.dart';
import 'package:truck_booking/presentation/personal_view_profile_page_screen/personal_view_profile_page_screen.dart';
import 'package:truck_booking/presentation/search_lorries_page_screen/binding/search_lorries_page_binding.dart';
import 'package:truck_booking/presentation/search_lorries_page_screen/search_lorries_page_screen.dart';
import 'package:truck_booking/presentation/select_language_page_screen/binding/select_language_page_binding.dart';
import 'package:truck_booking/presentation/select_language_page_screen/select_language_page_screen.dart';
import 'package:truck_booking/presentation/select_location_page_screen/binding/select_location_page_binding.dart';
import 'package:truck_booking/presentation/select_location_page_screen/select_location_page_screen.dart';
import 'package:truck_booking/presentation/sign_up_page_one_screen/Otp_confirm.dart';
import 'package:truck_booking/presentation/sign_up_page_one_screen/binding/sign_up_page_one_binding.dart';
import 'package:truck_booking/presentation/sign_up_page_screen/binding/sign_up_page_binding.dart';
import 'package:truck_booking/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:truck_booking/presentation/transporters_page_screen/binding/transporters_page_binding.dart';
import 'package:truck_booking/presentation/transporters_page_screen/transporters_page_screen.dart';

import '../presentation/bottomBar/bottom_bar_binding.dart';
import '../presentation/notification/notification_page.dart';
import '../presentation/onboarding_screen/onboarding_binding.dart';

class AppRoutes {
  static String onboarding = '/onboarding_screen';

  static String signUpPageScreen = '/sign_up_page_screen';

  static String signUpPageOneScreen = '/sign_up_page_one_screen';

  static String homePageScreen = '/home_page_screen';
  static String bottomBar = '/bottom_bar';

  static String selectLocationPageScreen = '/select_location_page_screen';

  static String latestLorriesPageScreen = '/latest_lorries_page_screen';

  static String lorryDetailPublicPageScreen =
      '/lorry_detail_public_page_screen';

  static String postLoadFullPageScreen = '/post_load_full_page_screen';

  static String transportersPageScreen = '/transporters_page_screen';

  static String menuPageScreen = '/menu_page_screen';

  static String personalViewProfilePageScreen =
      '/personal_view_profile_page_screen';

  static String personalProfilePageFullScreen =
      '/personal_profile_page_full_screen';

  static String favoritesPageScreen = '/favorites_page_screen';
  static String notificationPage = '/notification_page';

  static String searchLorriesPageScreen = '/search_lorries_page_screen';

  static String customerCarePageScreen = '/customer_care_page_screen';

  static String customerCarePageFullScreen = '/customer_care_page_full_screen';

  static String selectLanguagePageScreen = '/select_language_page_screen';


  static String initialRoute = '/initialRoute';

  static List page = [
    {"name": "/sign_up_page_screen", "page": SignUpPageScreen()},
    {"name": "/sign_up_page_one_screen", "page": SignUpPageOneScreen()},
    {"name": "/home_page_screen", "page": HomePageScreen()},
    {"name": "bottomBar", "page": AutoTruckBottomBar()},
    {
      "name": "/select_location_page_screen",
      "page": SelectLocationPageScreen()
    },
    {"name": "/lorry_detail_public_page_screen", "page": TruckDetailsPage()},
    {"name": "/notification_page", "page": NotificationPage()},
    {"name": "/transporters_page_screen", "page": TransportersPageScreen()},
    {"name": "/menu_page_screen", "page": MenuPageScreen()},
    {
      "name": "/personal_view_profile_page_screen",
      "page": ProfilePage()
    },
    {
      "name": "/personal_profile_page_full_screen",
      "page": PersonalProfilePageFullScreen()
    },
    {"name": "/favorites_page_screen", "page": FavoritesPageScreen()},
    {"name": "/search_lorries_page_screen", "page": SearchLorriesPageScreen()},
    {"name": "/customer_care_page_screen", "page": CustomerCarePageScreen()},
    {
      "name": "/customer_care_page_full_screen",
      "page": CustomerCarePageFullScreen()
    },
    {
      "name": "/select_language_page_screen",
      "page": SelectLanguagePageScreen()
    },
    {"name": "/initialRoute", "page": SignUpPageScreen()}
  ];

  static List<GetPage> pages = [
    GetPage(
      name: onboarding,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: signUpPageScreen,
      page: () => SignUpPageScreen(),
      bindings: [
        SignUpPageBinding(),
      ],
    ),
    GetPage(
      name: signUpPageOneScreen,
      page: () => SignUpPageOneScreen(),
      bindings: [
        SignUpPageOneBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),

    GetPage(name: bottomBar, page: () => AutoTruckBottomBar(),
    bindings: [
      BottomBarBinding(),
    ]
    ),
    GetPage(
      name: selectLocationPageScreen,
      page: () => SelectLocationPageScreen(),
      bindings: [
        SelectLocationPageBinding(),
      ],
    ),
    GetPage(
      name: lorryDetailPublicPageScreen,
      page: () => TruckDetailsPage(),
      bindings: [
        LorryDetailPublicPageBinding(),
      ],
    ),
    GetPage(
      name:notificationPage ,
      page: () => NotificationPage(),
      bindings: [
      ],
    ),
    GetPage(
      name: transportersPageScreen,
      page: () => TransportersPageScreen(),
      bindings: [
        TransportersPageBinding(),
      ],
    ),
    GetPage(
      name: menuPageScreen,
      page: () => MenuPageScreen(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 350),
      bindings: [
        MenuPageBinding(),
      ],
    ),
    GetPage(
      name: personalViewProfilePageScreen,
      page: () => ProfilePage(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 350),
      bindings: [
        PersonalViewProfilePageBinding(),
      ],
    ),
    GetPage(
      name: personalProfilePageFullScreen,
      page: () => PersonalProfilePageFullScreen(),
      bindings: [
        PersonalProfilePageFullBinding(),
      ],
    ),
    GetPage(
      name: favoritesPageScreen,
      page: () => FavoritesPageScreen(),
      bindings: [
        FavoritesPageBinding(),
      ],
    ),
    GetPage(
      name: searchLorriesPageScreen,
      page: () => SearchLorriesPageScreen(),
      bindings: [
        SearchLorriesPageBinding(),
      ],
    ),
    GetPage(
      name: customerCarePageScreen,
      page: () => CustomerCarePageScreen(),
      bindings: [
        CustomerCarePageBinding(),
      ],
    ),
    GetPage(
      name: customerCarePageFullScreen,
      page: () => CustomerCarePageFullScreen(),
      bindings: [
        CustomerCarePageFullBinding(),
      ],
    ),
    GetPage(
      name: selectLanguagePageScreen,
      page: () => SelectLanguagePageScreen(),
      bindings: [
        SelectLanguagePageBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpPageScreen(),
      bindings: [
        SignUpPageBinding(),
      ],
    )
  ];
}
