import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll<Color>(Colors.lightBlueAccent)),
          child: Text(
            'GTFO',
            style: TextStyle(
              fontSize: 90,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
