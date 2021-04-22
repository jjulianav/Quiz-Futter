import 'package:flutter/material.dart';

import 'package:dev_quiz/challenge/widgets/awner/awnser_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onChange,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnser(int index) =>
      widget.question.awnsers[index]; // função pra não ter que chamar toda hora

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Text(
            widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.awnsers.length; i++)
            AwnserWidget(
              awnser: awnser(i),
              isSelected: indexSelected == i,
              disabled: indexSelected != -1,
              onTap: () {
                indexSelected = i;
                //widget.onChange();

                setState(() {});
                Future.delayed(
                  Duration(seconds: 1),
                ) //delay para visualização da resposta
                    .then((value) => widget.onChange());
              },
              //isRight: widget.question.awnsers[i].isRight, //forma anterior antes da função
              //isRight: awnser(i).isRight,
              //title: awnser(i).title,
            )
        ],
      ),
    );
  }
}
