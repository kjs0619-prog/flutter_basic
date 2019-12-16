import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'loading_page.dart';
import 'login_page.dart';
import 'tab_page.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('root_page created');
    return _handleCurrentScreen();
  }

  // 현재 화면을 결정하는 로직
  Widget _handleCurrentScreen() {
    // FirebaseUser를 스트림으로 받는 StreamBuilder
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,   // 인증 상태가 변경되는 스트림
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // 연결 상태가 기다리는 중이라면 로딩 페이지를 반
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingPage();
        } else {
          // 연결 되었고 데이터가 있다면
          if (snapshot.hasData) {
            // 유저 정보가 있다면 메인 화면을 반환
            return TabPage(snapshot.data);
          }
          // 유저 정보가 없다면 로그인 화면을 반환
          return LoginPage();
        }
      },
    );
  }
}
