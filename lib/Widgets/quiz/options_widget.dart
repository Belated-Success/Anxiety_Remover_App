import 'package:flutter/material.dart';
import 'package:negi/Models/quiz/Question.dart';
import 'package:negi/Models/quiz/option.dart';

import 'package:negi/utils/utils.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  // ignore: use_key_in_widget_constructors
  const OptionsWidget({
    required this.question,
    required this.onClickedOption,
  });

  @override
  Widget build(BuildContext context) => ListView(
    physics: const BouncingScrollPhysics(),
    children: Utils.heightBetween(
      question.options
          .map((option) => buildOption(context, option))
          .toList(),
      height: 8,
    ),
  );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            buildAnswer(option),
            buildSolution(question.selectedOption, option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(Option option) => SizedBox(
    height: 50,
    child: Row(children: [
      Text(
        option.code,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(width: 12),
      Text(
        option.text,
        style: const TextStyle(fontSize: 20),
      )
    ]),
  );

  Widget buildSolution(Option? solution, Option answer) {
    if (solution == answer) {
      return Text(
        question.solution,
        style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      );
    } else {
      return Container();
    }
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      return Colors.grey.shade200;
    } else {
      return option.isCorrect ? Colors.green : Colors.red;
    }
  }
}