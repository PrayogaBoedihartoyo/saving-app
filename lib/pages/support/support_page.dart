import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  static const String nameRoute = '/support';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Support Page'),
      )
    );
  }
}