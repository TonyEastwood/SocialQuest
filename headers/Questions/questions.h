#ifndef QUESTIONS_H
#define QUESTIONS_H
#include <QByteArray>
#include <cassert>

#include "../DataBase/database.h"
class Questions {
 private:
  DataBase questionsDb;

 public:
  Questions(QByteArray pathDb);

  bool getIsExist() const;

 private:
  void initializeQuestionsByLanguage();
};

#endif  // QUESTIONS_H
