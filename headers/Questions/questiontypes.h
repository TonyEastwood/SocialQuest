#ifndef QUESTIONTYPES_H
#define QUESTIONTYPES_H
#include "question.h"
//[CHANGE] all
class QuestionWithSeveralChecks : public Question {
 private:
  QList<QByteArray> listAnswers;

 public:
  QuestionWithSeveralChecks(QByteArray serializedData);
  ~QuestionWithSeveralChecks();
};
class QuestionChooseOneFromList : public Question {
 public:
  QuestionChooseOneFromList(QByteArray serializedData);
  ~QuestionChooseOneFromList();
};
class QuestionSetValueInterval : public Question {
 public:
  QuestionSetValueInterval(QByteArray serializedData);
  ~QuestionSetValueInterval();
};
class QuestionSetValue : public Question {
 public:
  QuestionSetValue(QByteArray serializedData);
  ~QuestionSetValue();
};

#endif  // QUESTIONTYPES_H