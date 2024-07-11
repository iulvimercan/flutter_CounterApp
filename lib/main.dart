import 'package:flutter/material.dart';
import 'package:counter_app/counter.dart';

void main() {
  runApp(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Counter(),
          ),
        ),
      ),
  );
}