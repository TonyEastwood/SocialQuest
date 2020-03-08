#ifndef ANSWERS_H
#define ANSWERS_H
#include <QByteArray>
//[Change]
class Answer {
 private:
  int idQuestion;
  uint type;
  QByteArray serializedData;

 public:
  Answer(QByteArray serializedData);
};

#endif  // ANSWERS_H
