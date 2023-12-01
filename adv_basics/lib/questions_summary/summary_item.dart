import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          itemData['question_index'] as int,
          isCorrectAnswer,
        ),
    
      const SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 221, 206, 238),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(itemData['user_answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 239, 117, 117),
              )),
            Text(itemData['correct_answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 139, 195, 74),
              )
            ),
          ],
        ),
      ),
    ]);
  }
}
