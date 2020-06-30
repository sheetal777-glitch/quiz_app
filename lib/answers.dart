import 'question_class.dart';

class QuestionAnswers {
  int _questionNumber = 0;
  int _answerNumber = 0;
  List<Question> _questionBank = [
    Question(
        q: 'What is the longest that an elephant has lived?',
        a0: '17 years',
        a1: '49 years',
        a2: '86 years',
        a3: '142 years'),
    Question(
        q: 'How many rings are on the Olympic flag?',
        a0: '4',
        a1: '5',
        a2: '7',
        a3: '6'),
    Question(
        q: 'How did Spider-Man get his powers?',
        a0: 'Military experiment gone awry',
        a1: 'Born with them',
        a2: 'Woke up with them after a strange dream',
        a3: 'Bitten by a radioactive spider'),
    Question(
        q: 'Which of these animals does NOT appear in the Chinese zodiac?',
        a0: 'Bear',
        a1: 'Rabbit',
        a2: 'Dragon',
        a3: 'Dog'),
    Question(
        q: 'What are the main colors on the flag of Spain?',
        a0: 'Black and yellow',
        a1: 'Green and white',
        a2: 'Blue and white',
        a3: 'Red and yellow'),
    Question(
        q: 'Which ghost teaches History of Magic at Hogwarts?',
        a0: 'Myrtle Warren',
        a1: 'Helena Ravenclaw',
        a2: 'Sir Nicholas de Mimsy Propington',
        a3: 'Cuthbert Binns'),
    Question(
        q: 'Who was NOT a member of the "Slug Club"?',
        a0: 'Cormac McLaggen',
        a1: 'Hermione Granger',
        a2: 'Ron Weasley',
        a3: 'Harry Potter'),
    Question(
        q: 'Which of the Weasleys went to Romania to study dragons?',
        a0: 'Charlie',
        a1: 'George',
        a2: 'Bill',
        a3: 'Percy'),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionAnswer0() {
    return _questionBank[_answerNumber].questionAnswer0;
  }

  String getQuestionAnswer1() {
    return _questionBank[_answerNumber].questionAnswer1;
  }

  String getQuestionAnswer2() {
    return _questionBank[_answerNumber].questionAnswer2;
  }

  String getQuestionAnswer3() {
    return _questionBank[_answerNumber].questionAnswer3;
  }

  void nextQuestionAnswer() {
    _questionNumber++;
    _answerNumber++;
  }

  void reset() {
    _questionNumber = 0;
    _answerNumber = 0;
  }
}
