#ifndef QUESTIONMANAGER_H
#define QUESTIONMANAGER_H
#include <QByteArray>
#include <cassert>

#include "../DataBase/database.h"
#include "../utils/utils.h"
#include "questiontypes.h"
class QuestionManager {
 private:
  DataBase questionsDb;

 public:
  QuestionManager(QByteArray pathDb);

  bool getIsExist() const;
  Question *createQuestionByQuestionType(int questionType,
                                         QByteArray serializedInitializeData);

 private:
  void initializeQuestionsByLanguage();
};

#endif  // QUESTIONMANAGER_H
