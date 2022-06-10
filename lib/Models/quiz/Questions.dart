import 'Question.dart';
import 'option.dart';

final questions = [
  Question(
    text: 'What does U.S stand for?',
    options: [
      const Option(code: 'A', text: 'United States', isCorrect: true),
      const Option(code: 'B', text: 'United Services', isCorrect: false),
      const Option(code: 'C', text: 'United Soccer', isCorrect: false),
      const Option(code: 'D', text: 'United Songs', isCorrect: false),
    ],
    solution: 'U.S. stand for United States',
  ),
  Question(
    text: 'How much is 2 multiplied by 2',
    options: [
      const Option(code: 'A', text: '1', isCorrect: false),
      const Option(code: 'B', text: '2', isCorrect: false),
      const Option(code: 'C', text: '4', isCorrect: true),
      const Option(code: 'D', text: '3', isCorrect: false),
    ],
    solution: 'It is 2*2=4',
  ),
  Question(
    text: 'Sun rises in the ',
    options: [
      const Option(code: 'A', text: 'East', isCorrect: true),
      const Option(code: 'B', text: 'West', isCorrect: false),
      const Option(code: 'C', text: 'South', isCorrect: false),
      const Option(code: 'D', text: 'North', isCorrect: false),
    ],
    solution: 'Sun rises in the east and sets in west',
  ),
];