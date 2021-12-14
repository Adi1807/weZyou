import 'package:we_z_you/UI/Fourth_page/transaction_screen.dart';
import 'package:we_z_you/UI/chat_details_screen.dart';
import 'package:we_z_you/UI/item_detail_screen.dart';
import 'package:we_z_you/UI/other_screens/settings.dart';
import 'package:we_z_you/UI/slider_screen.dart';

import 'screens.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 14, color: darkpinkColor),
          bodyText2: TextStyle(
            fontSize: 16,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(fontSize: 16, color: blackColor),
          headline5: TextStyle(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        ),
      ),
      home: Splash(),
      routes: {
        RegistrationPage.routeName: (_) => const RegistrationPage(),
        RegistrationPage1.routeName: (_) => const RegistrationPage1(),
        Homepage.routeName: (_) => const Homepage(),
        CelebrityDetailsScreen.routeName: (_) => const CelebrityDetailsScreen(),
        CustomerMsg.routeName: (_) => const CustomerMsg(),
        CustomerScreen.routeName: (_) => const CustomerScreen(),
        Transactionscreen.routeName: (_) => const Transactionscreen(),
        DebitCardScreen1.routeName: (_) => const DebitCardScreen1(),
        ProfilePage.routeName: (_) => const ProfilePage(),
        CheckOut.routeName: (_) => const CheckOut(),
        DebitCardScreen2.routeName: (_) => const DebitCardScreen2(),
        OtpScreen.routeName: (_) => const OtpScreen(),
        InboxScreen.routeName: (_) => const InboxScreen(),
        NotificationScreen.routeName: (_) => const NotificationScreen(),
        PaymentDetails.routeName: (_) => const PaymentDetails(),
        Settings.routeName: (_) => const Settings(),
        ChatDetailPage.routeName: (_) => ChatDetailPage(),
        ItemDetailsScreen.routeName: (_) => ItemDetailsScreen(),
        SliderScreen.routeName: (_) => SliderScreen(),
      },
    );
  }
}
