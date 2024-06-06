import 'package:flutter/material.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is Feature Page', style: TextStyle(fontSize: 24),),
      ),
    );
  }
}