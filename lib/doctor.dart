import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  String name;
  Doctor(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.name),
      ),
    );
  }
}
