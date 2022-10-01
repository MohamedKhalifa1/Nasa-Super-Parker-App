class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "What if parker has an extra sheild?",
    [
      Answer("It will move faster", false),
      Answer("It will reflect the sun light", false),
      Answer("It will reach the sun after 2025", true),
      Answer("It will get hoter an explode", false),
    ],
  ));

  list.add(Question(
    "How does the solar panel of parker tolerat the high temprature of the sun atmospher?",
    [
      Answer("by the self calling system of the robot which mimic the car motor", true),
      Answer("It can\'t absorb sun light and temprature", false),

    ],
  ));

  list.add(Question(
    "How far can we get closer ?",
    [
      Answer("Very close to the sun sheild", true),
      Answer("We can enter insde the sun", false),
      Answer("We can enter the sun sevice ", false),
      Answer("We can\'t get so far", true),
    ],
  ));


  return list;
}
