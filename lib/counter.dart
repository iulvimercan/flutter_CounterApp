import 'package:flutter/material.dart';
import 'package:counter_app/colors.dart';

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

  void reset() {
    setState(() {
      _counter = 0;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Counter reset'),
          duration: Duration(seconds: 2)
        ),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // make the horizontal padding quadrant as large as the vertical padding
          padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.purple,
              width: 2,
            ),
          ),
          child: Text(
            '$_counter',
            style: const TextStyle(
              fontSize: 82,
              color: Colors.purple,
            ),
          ),
        ),
        const SizedBox(height: 36),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton.filledTonal(
              onPressed: decrement,
              icon: const Icon(
                size: 64,
                color: AppColors.text,
                IconData(0xf038, fontFamily: 'MaterialIcons'),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(AppColors.primary),
              ),
            ),
            const SizedBox(width: 52),
            IconButton.filledTonal(
              onPressed: increment,
              icon: const Icon(
                size: 64,
                color: AppColors.text,
                IconData(0xf03b, fontFamily: 'MaterialIcons'),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(AppColors.primary)
              ),
            ),
          ]
        ),
        IconButton(
          onPressed: reset,
          icon: const Icon(
            size: 64,
            color: AppColors.secondary,
            IconData(0xe0c1, fontFamily: 'MaterialIcons'),
          )
        ),
      ],
    );
  }
  
}