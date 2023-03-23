import 'package:flutter/material.dart';

class newpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New page"),
      ),
      body: const Center(
        child: Text("This is the new page"),
      ),
    );
  }
}
