import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/common/util/async/flutter_async.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {

  /* 스플래쉬 화면이후 로그인 처리하기 위한 화면 띄우기
  * 스플래쉬 이후 약간의 딜레이 이후 표시하기 */
  /*@override
  void initState(){

    *//* common 의 delay 사용하라는 데 구현 없음 *//*
    delay((){
      Nav.push(const MainScreen());
    }, 1500.ms);

    super.initState();
  }*/

  @override
  FutureOr<void> afterFirstLayout(BuildContext context){
    Nav.clearAllAndPush(const MainScreen());
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();

    /* file 접근하려면 pubspec.yaml 에 - assets/image/splash/ 경로 추가
    * w, h 는 768 이미지에 나누기 4 한 것임 */
    return Center(
        child: Image.asset(
      "assets/image/splash/splash.png",
      width: 192,
      height: 192,
    ));
  }
}
