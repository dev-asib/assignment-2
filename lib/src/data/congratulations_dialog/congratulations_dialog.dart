import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/data/congratulations_dialog/congratulations_message_middle_view.dart';
import 'package:ostad_assignment_2/src/data/congratulations_dialog/congratulations_okay_button.dart';
import 'package:ostad_assignment_2/src/data/congratulations_dialog/congratulations_text.dart';

Widget dialog({required productTitle, required context}){
  return Dialog(
    child: SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20, right: 20, bottom: 20, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCongratulationsText(),
            SizedBox(
              height: 10,
            ),
            buildCongratulationMessageMiddleView(productTitle: productTitle),
            SizedBox(
              height: 10,
            ),
            buildCongratulationsOkayButton(context: context)
          ],
        ),
      ),
    ),
  );
}