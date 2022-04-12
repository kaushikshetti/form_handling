import 'package:flutter/material.dart';
class NextPage extends StatefulWidget {
  String title;
  NextPage({required this.title,Key? key}):super(key: key);



  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Text"),

      ),
      body:Center(child: Text(this.widget.title),)
    );
  }
}