#ifndef QUESTIONMANAGER_H
#define QUESTIONMANAGER_H
#include <QByteArray>
#include <cassert>

#include "../DataBase/database.h"
class QuestionManager {
 private:
  DataBase questionsDb;

 public:
  QuestionManager(QByteArray pathDb);

  bool getIsExist() const;

 private:
  void initializeQuestionsByLanguage();
};

#endif  // QUESTIONMANAGER_H
