import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other'),
        centerTitle: true,
      ),
    );
  }
}
