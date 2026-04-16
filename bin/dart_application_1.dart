import 'dart:math';
import 'dart:io';

enum Choices { paper, sissor, rock }

void main() {
  var ai = Random();
  print('Rock - Paper - Sissor game');
  print('Your task is to choose from 1 to 3 respectively');
  int attempts = 0;
  int score = 0;
  Game:
  while (true) {
    int aiNumber = ai.nextInt(3);
    print('Choose the number');
    int userNumber = int.parse(stdin.readLineSync()!);

    Choices aiChoice = choice(aiNumber);
    Choices userChoice = choice(userNumber - 1);
    Round:
    while (true) {
      score += gameRule(aiChoice, userChoice) ? 1 : 0;
      print('On the attempt number: $attempts');
      print('Ai: $aiChoice\nUser: $userChoice');
      print('Score = $score');
      print('Do you want to replay? (y / n)');
      String rep = stdin.readLineSync() ?? 'n';
      if (rep.toLowerCase() == 'y') {
        break Round;
      } else {
        break Game;
      }
    }
  }
}

Choices choice(int number) {
  switch (number + 1) {
    case 1:
      return Choices.rock;
    case 2:
      return Choices.paper;
    case 3:
      return Choices.sissor;
    default:
      throw Error();
  }
}

bool gameRule(Choices Ai, Choices User) {
  // The outer if statement means the user choice
  // the inner if tatement means if ai chose something would let the user win.
  // it return true if the user actually chose right, false if tie or ai won.
  if (User == Choices.paper) {
    if (Ai == Choices.rock) {
      return true;
    } else {
      return false;
    }
  } else if (User == Choices.rock) {
    if (Ai == Choices.sissor) {
      return true;
    } else {
      return false;
    }
  } else {
    if (Ai == Choices.paper) {
      return true;
    } else {
      return false;
    }
  }
}