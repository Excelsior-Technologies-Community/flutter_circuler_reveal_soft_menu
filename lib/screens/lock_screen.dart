import 'package:flutter/material.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lock Screen')),
      body: Center(
        child: Text('This is Lock Screen', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
