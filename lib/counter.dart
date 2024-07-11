import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  
  var _counter = 0;

  void decrement() {
    setState(() {
      if(_counter > 0) {
        _counter--;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(
          content: Text('Ops! Counter cannot be negative'),
          duration: Duration(seconds: 2)
        ),
      );
      }
    });
  }

  void increment() {
    setState(() {
      _counter++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          // make the horizontal padding quadrant as large as the vertical padding
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.purple,
              width: 2,
            ),
          ),
          child: Text(
            '$_counter',
            style: const TextStyle(
              fontSize: 64,
              color: Colors.purple,
            ),
          ),
        ),
        const SizedBox(height: 26),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: decrement,
                icon: const Icon(
                  size: 52,
                  IconData(0xf038, fontFamily: 'MaterialIcons'),
                )
            ),
            IconButton(
                onPressed: increment,
                icon: const Icon(
                  size: 52,
                  IconData(0xf03b, fontFamily: 'MaterialIcons'),
                )
            ),
          ]
        ),
      ],
    );
  }
  
}