import 'package:flutter/material.dart';

import 'Questions.dart';
import 'category.dart';

final categories = [
  Category(
    questions: questions,
    categoryName: 'General Knowledge',
    imageUrl: 'assets/',
    backgroundColor: Colors.blue,
    icon: Icons.radio_button_checked,
    description: 'Practice questions from various chapters in General Knowledge',
  ),
];