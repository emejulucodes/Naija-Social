import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hELLO WORLD',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.lightGreenAccent,
            fontSize: 32.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
