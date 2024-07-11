import 'package:flutter/material.dart';
import 'package:counter_app/counter.dart';
import 'package:counter_app/colors.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Counter App',
                style: TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.w700,
                ),
            ),
            backgroundColor: AppColors.primary,
          ),
          body: Container(
            color: AppColors.light,
            child: const Center(
                child: Counter()
            ),
          ),
        ),
      ),
  );
}