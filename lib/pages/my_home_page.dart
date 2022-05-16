import 'package:flutter/material.dart';

// StatelessWidget은 build기반으로 화면을 그린다.
// StatelessWidget는 상태가 없는 위젯. 상태값이 변해도 화면에 출력을 못함
// StatefulWidget은 상태값이 변경되는 위젯을 쓸때 사용. (줄여서 stful 만듬)
// StatefulWidget은 Class가 두개임. 첫번째는 받는부분, 두번째는 build부분에 실제 상태가 변경될 때 화면에 출력하는 부분(setState로 변경할 상태값 입력)
// ↓위젯이라고 불림
class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter my AppBar')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count == 0 ? count = 0 : count--;
          });
        },
        child: const Icon(
          // Icons.plus_one, // +1 아이콘
          Icons.remove_outlined,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              }); // 빌드가 다시 호출되서 리렌더링됨
            },
            child: const Text("+"),
          ),
          Center(
            child: Text('$count'),
          )
        ],
      ),
    );
  }
}

/*
- Container

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text('Flutter my AppBar'))), // 상단바 생성 가운데로 타이틀은 Text위젯,
      body: Container(
          color: Colors.blueGrey.shade100,
          // x축 = 0 : center
          // y축 = 0 : center
          alignment: const Alignment(0, -0.7),
          // alignment: Alignment.center, // 지금 있는 위치의 센터
          // alignment: Alignment.centerLeft,
          // alignment: Alignment.topCenter,
          // alignment: Alignment.bottomCenter,
          // padding: const EdgeInsets.all(10), // 패딩 상,하,좌,우 10 만큼 설정
          padding: const EdgeInsets.symmetric(
            // 패딩 좌우, 상하 설정
            horizontal: 10,
            vertical: 50,
          ),
          margin: const EdgeInsets.symmetric(
            // 마진 좌우, 상하 설정
            horizontal: 50,
            vertical: 50,
          ),
          width: 200,
          height: 300,
          child: const Text('Flutter My Home Page')), // body내의 center로
    );
  }

 */
