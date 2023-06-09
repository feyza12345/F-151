import 'package:f151/constants/constants.dart';
import 'package:f151/pages/login/tabs/sign_in_page.dart';
import 'package:f151/pages/login/tabs/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
              labelColor: kAppBarBackgroundColor1,
              dividerColor: kAppBarBackgroundColor1,
              indicatorColor: kAppBarBackgroundColor1,
              unselectedLabelColor: kAppBarBackgroundColor1,
              onTap: (_) => FocusScope.of(context)
                  .unfocus(), //tab degistiginde klavye kapanir
              tabs: const [
                Tab(text: 'Giriş yap'),
                Tab(text: 'Kayıt Ol'),
              ]),
          body: const TabBarView(
            children: [SignInPage(), SignUpPage()],
          ),
        ),
      ),
    );
  }
}
