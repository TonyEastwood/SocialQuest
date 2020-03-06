#include "../../headers/Questions/questionmanager.h"

QuestionManager::QuestionManager(QByteArray pathDb) : questionsDb(pathDb) {
  // assert(pathDb.isEmpty());  [CHANGE]
  initializeQuestionsByLanguage();
}

void QuestionManager::initializeQuestionsByLanguage() {}
