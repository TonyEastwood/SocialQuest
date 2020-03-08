#include "../../headers/Questions/questionmanager.h"

QuestionManager::QuestionManager(QByteArray pathDb) : questionsDb(pathDb) {
  // assert(pathDb.isEmpty());  [CHANGE]
  initializeQuestionsByLanguage();
}

Question *QuestionManager::getQuestionByQuestionType(
    int questionType, QByteArray serializedInitializeData) {
  if (questionType == 0) return new QuestionWithSeveralChecks();
}

void QuestionManager::initializeQuestionsByLanguage() {}
