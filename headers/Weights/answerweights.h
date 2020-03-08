#ifndef ANSWERWEIGHTS_H
#define ANSWERWEIGHTS_H

#include <QByteArray>
#include <QMap>
#include <cassert>
//[CHANGE]
#include "../utils/utils.h"
class AnswerWeights {
 private:
  QMap<int, QByteArray> weights;

 public:
  // example serialized data:
  //{ idQuestoion1: {idParameter: changingValue, idParamater2: changing Value
  //...}
  // idQuestion2: {...} }
  AnswerWeights(QByteArray serializedData);
};

#endif  // ANSWERWEIGHTS_H
