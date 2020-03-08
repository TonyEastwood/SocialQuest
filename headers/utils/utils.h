#ifndef UTILS_H
#define UTILS_H
#include <QByteArray>
#include <QList>
namespace Paths {
const QByteArray pathToRelationshipLocalFile = "/data/users/";
}
namespace QuestionSpace {
enum QuestionType {
  QuestionWithSeveralChecks = 0,
  QuestionChooseOneFromList = 1,
  QuestionSetValueInterval = 2,
  QuestionSetValue = 3
  //[CHANGE]
};
}
namespace Serialization {
static QByteArray intToByteArray(const int &number, const int &size) {
  QByteArray num = QByteArray::number(number);
  QByteArray res = "";
  if (num.size() < size)
    for (int i = 0; i < size - num.size(); i++) res += "0";
  res += num;
  return res;
}

static QByteArray universalSerialize(const QList<QByteArray> &list,
                                     const int &fiels_size = 4) {
  QByteArray serialized = "";
  for (const QByteArray &param : list) {
    serialized += intToByteArray(param.size(), fiels_size);
    serialized += param;
  }
  return serialized;
}
static QList<QByteArray> universalDeserialize(const QByteArray &serialized,
                                              const int &fiels_size = 4) {
  if (serialized.isEmpty() || serialized.length() <= fiels_size) {
    return {};
  }

  QList<QByteArray> list = {};
  int pos = 0;
  while (pos < serialized.size()) {
    bool ok = true;
    int count = serialized.mid(pos, fiels_size)
                    .toInt(&ok);  // Utils::qByteArrayToInt(serialized.mid(pos,
                                  // fiels_size));
    if (!ok) return list;
    pos += fiels_size;
    QByteArray el = serialized.mid(pos, count);
    pos += count;
    if (el.isEmpty())
      list.append(el);
    else
      list << el;
  }
  //    serialized.remove(0, pos);
  return list;
}
}  // namespace Serialization

#endif  // UTILS_H
