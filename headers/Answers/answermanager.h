#ifndef ANSWERMANAGER_H
#define ANSWERMANAGER_H

#include <QList>

#include "answers.h"

class AnswerManager {
 private:
  QList<Answer> answerList;

 public:
  AnswerManager();
};

#endif  // ANSWERMANAGER_H
