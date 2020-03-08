#include "../../headers/Weights/answerweights.h"

AnswerWeights::AnswerWeights(QByteArray serializedData) {
  //[CHANGE]
  QList<QByteArray> tempList;
  tempList = Serialization::universalDeserialize(serializedData);

  QList<QByteArray> tempNestedList;

  for (const auto i : tempList) {
    tempNestedList = Serialization::universalDeserialize(i);
    if (tempNestedList.size() != 2) {
      qDebug() << __FUNCTION__ << __LINE__
               << "Error with anser weights size!=2";
      assert(tempNestedList.size() == 2);
    }
    weights[tempNestedList[0].toInt()] = tempNestedList[1];
  }
}
