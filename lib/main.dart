import 'package:flutter/material.dart';
// import 'pages/flutter_home_page.dart';
import 'pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const FlutterHomePage(),
      home: MyHomePage(),
      // home: const _MyPrivatePage(),
    );
  }
}

// _언더바를 앞에 붙이면 밖에서 못불러옴. 해당 페이지 안에서만 사용가능
// 해당 파일 안에서만 쓰일때는 _(언더바)를 써서 Private위젯으로 관리
// _언더바를 안쓰면 퍼블릭한 위젯임 아무나 가져다 쓸 수 있음.
/*
class _MyPrivatePage extends StatelessWidget {
  const _MyPrivatePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text('Flutter my AppBar'))), // 상단바 생성 가운데로 타이틀은 Text위젯,
      body: const Center(child: Text('Flutter My Home Page')),
    );
  }
}
*/