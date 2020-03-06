#include "../../headers/Questions/questions.h"

Questions::Questions(QByteArray pathDb) : questionsDb(pathDb) {
  // assert(pathDb.isEmpty());  [CHANGE]
  initializeQuestionsByLanguage();
}

void Questions::initializeQuestionsByLanguage() {}
