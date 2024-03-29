import 'package:flutter/material.dart';
import 'package:pkbm_harapan_bangsa/API/login_api.dart';
import 'package:pkbm_harapan_bangsa/models/users.dart';
import 'package:pkbm_harapan_bangsa/screen/view_absen.dart';
import 'package:provider/provider.dart';
import 'screen/splash_screen.dart';
import 'screen/login.dart';
import 'screen/register.dart';
import 'screen/dashboard.dart';
import 'screen/form_absen.dart';
import 'screen/user_profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PKBM());
}

class PKBM extends StatelessWidget {
  PKBM();

  //Api sudah di Hosting
  final LoginApi apiManager =
      LoginApi(baseUrl: 'https://pkbmharbang.com/api/login');

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserManager()),
        Provider.value(value: apiManager),
      ],
      child: MaterialApp(
        title: 'PKBM Harapan Bangsa',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => MySignIn(),
          '/register': (context) => MySignUp(),
          '/dashboard': (context) => Dashboard(),
          '/formAbsen': (context) => InputForm(),
          '/user-profile': (context) => UserProfile(),
          '/absen-view': (context) => AbsenViewForm(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
