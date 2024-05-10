import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/data/congratulations_dialog/congratulations_middle_message_with_produdct_title.dart';

Column buildCongratulationMessageMiddleView({required productTitle}) {
  return Column(
    children: [
      buildCongratulationsMiddleMessageWithProductTitle(
        message: "You have added",
      ),
      buildCongratulationsMiddleMessageWithProductTitle(
        message: "5",
      ),
      buildCongratulationsMiddleMessageWithProductTitle(
        message: "$productTitle on your bag!",
      ),
    ],
  );
}