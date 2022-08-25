import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/router/app_router_names.dart';
import 'package:oz_go_driver/presentation/screens/user/chat_screen.dart';

import 'package:oz_go_driver/presentation/screens/user/trip_request_screen.dart';
import 'package:oz_go_driver/presentation/test.dart';

import '../screens/shared/splash_screen.dart';
import '../screens/user/checkout_screen.dart';
import '../screens/user/contact_screen.dart';
import '../screens/user/contact_us_screen.dart';
import '../screens/user/history_screen.dart';
import '../screens/user/infite_firend_screen.dart';
import '../screens/user/language_screen.dart';
import '../screens/user/my_wallet_screen.dart';
import '../screens/user/notification_on_off.dart';
import '../screens/user/notification_screen.dart';
import '../screens/user/rating_screen.dart';
import '../screens/user/setting_screen.dart';
import '../screens/user/terms_screen.dart';
import '../screens/user/trip_start_screen.dart';
import '../screens/user/your_trip_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rSplashRoute:
        return MaterialPageRoute(
          builder: (_) => ContactScreen(),
        );
      case AppRouterNames.rSignInRoute:
        return MaterialPageRoute(
          // todo
          builder: (_) => Test(),
        );
      case AppRouterNames.rVerificationRoute:
        return MaterialPageRoute(
          // todo
          builder: (_) => Test(),
        );
      case AppRouterNames.rTripRequestRoute:
        return MaterialPageRoute(
          builder: (_) => TripRequestScreen(),
        );
      case AppRouterNames.rNotificationSwitchRoute:
        return MaterialPageRoute(
          builder: (_) => NotificationSwitch(),
        );
      case AppRouterNames.rSettingsRoute:
        return MaterialPageRoute(
          builder: (_) => SettingScreen(),
        );
      case AppRouterNames.rHistoryRoute:
        return MaterialPageRoute(
          builder: (_) => HistoryScreen(),
        );
      case AppRouterNames.rNotificationRoute:
        return MaterialPageRoute(
          builder: (_) => NotificationScreen(),
        );
      case AppRouterNames.rMyWalletRoute:
        return MaterialPageRoute(
          builder: (_) => MyWalletScreen(),
        );
      case AppRouterNames.rTripeEndRoute:
        return MaterialPageRoute(
          builder: (_) => TripStartScreen(),
        );
      case AppRouterNames.rTripeStartRoute:
        return MaterialPageRoute(
          builder: (_) => TripStartScreen(),
        );
      case AppRouterNames.rProfileRoute:
        return MaterialPageRoute(
          // todo
          builder: (_) => Test(),
        );
      case AppRouterNames.rYourTripeRoute:
        return MaterialPageRoute(
          builder: (_) => YourTripScreen(),
        );
      case AppRouterNames.rContactsRoute:
        return MaterialPageRoute(
          builder: (_) => ContactScreen(),
        );
      case AppRouterNames.rInviteRoute:
        return MaterialPageRoute(
          builder: (_) => InviteFriendScreen(),
        );
      case AppRouterNames.rContactUsRoute:
        return MaterialPageRoute(
          builder: (_) => ContactUsScreen(),
        );
      case AppRouterNames.rLanguageRoute:
        return MaterialPageRoute(
          builder: (_) => LanguageScreen(),
        );
      case AppRouterNames.rTermsRoute:
        return MaterialPageRoute(
          builder: (_) => TermsScreen(),
        );
      case AppRouterNames.rCheckoutRoute:
        return MaterialPageRoute(
          builder: (_) => CheckOutScreen(),
        );
      case AppRouterNames.rChatRoute:
        return MaterialPageRoute(
          builder: (_) => ChatScreen(),
        );
      case AppRouterNames.rCustomerReviewRoute:
        return MaterialPageRoute(
          // todo
          builder: (_) => Test(),
        );
      case AppRouterNames.rRatingRoute:
        return MaterialPageRoute(
          builder: (_) => RatingScreen(),
        );
    }
  }
}
