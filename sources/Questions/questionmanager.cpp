#include "../../headers/Questions/questionmanager.h"

QuestionManager::QuestionManager(QByteArray pathDb) : questionsDb(pathDb) {
  // assert(pathDb.isEmpty());  [CHANGE]
  initializeQuestionsByLanguage();
}

Question *QuestionManager::createQuestionByQuestionType(
    int questionType, QByteArray serializedInitializeData) {
  if (questionType == QuestionSpace::QuestionWithSeveralChecks)
    return new QuestionWithSeveralChecks(serializedInitializeData);
  if (questionType == QuestionSpace::QuestionSetValue)
    return new QuestionSetValue(serializedInitializeData);
  if (questionType == QuestionSpace::QuestionSetValueInterval)
    return new QuestionSetValueInterval(serializedInitializeData);
  if (questionType == QuestionSpace::QuestionChooseOneFromList)
    return new QuestionChooseOneFromList(serializedInitializeData);
  //[CHANGE] ADD new types in the future.
}

void QuestionManager::initializeQuestionsByLanguage() {}
