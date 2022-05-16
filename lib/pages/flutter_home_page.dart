import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';

class FlutterHomePage extends StatelessWidget {
  const FlutterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter Home Page')),
      ),
      body: const Center(
        child: Text('플러터 홈페이지'),
      ),
    );
  }
}
