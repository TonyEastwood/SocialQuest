#include "../../headers/Relationship/relationship.h"
Relationship::Relationship(uint userId) : _userId(userId) {}

Relationship::Relationship(uint userId, QByteArray serializedAnswerList)
    : _userId(userId) {
  //[CHANGE]  parse all answers and calc weights
}

// save relationship data to local file
void Relationship::saveRelationshipLocal() {
  QFile file(Paths::pathToRelationshipLocalFile + QByteArray::number(_userId) +
             ".dat");
  if (file.open(QIODevice::WriteOnly)) {
    file.write(serialize());
    file.close();
  } else
    assert(false && "File not open on write relationship");
}

bool Relationship::loadRelationshipLocal() {
  QFile file(Paths::pathToRelationshipLocalFile + QByteArray::number(_userId) +
             ".dat");

  if (!file.exists()) return false;

  QList<QByteArray> tempData;

  if (file.open(QIODevice::ReadOnly)) {
    tempData = Serialization::universalDeserialize(file.readAll());
    file.close();

    if (tempData.size() != sizeAllRelationship()) {
      assert((tempData.size() == sizeAllRelationship()));
      return false;
    } else {
      int j = 0;
      int i = 0;
      for (i = 0; i < RelationFactor::SizeCommon; ++i, ++j)
        commonRF[i] = tempData[j].toInt();

      for (i = 0; i < RelationFactor::SizeLanguages; ++i, ++j)
        languagesRF[i] = tempData[j].toInt();

      for (i = 0; i < RelationFactor::SizeMusic; ++i, ++j)
        musicRF[i] = tempData[j].toInt();

      for (i = 0; i < RelationFactor::Interests::SizeArt; ++i, ++j)
        interestsRF[i] = tempData[j].toInt();

      for (i = 0; i < RelationFactor::Interests::SizeSport; ++i, ++j)
        sportRF[i] = tempData[j].toInt();

      for (i = 0; i < RelationFactor::Interests::SizeIntelligent; ++i, ++j)
        intelligentRF[i] = tempData[j].toInt();

      for (i = 0; i < RelationFactor::Interests::SizeEtc; ++i, ++j)
        etcRF[i] = tempData[j].toInt();
    }
  }
}

QByteArray Relationship::serialize() {
  QList<QByteArray> serialisationList;
  int i;
  for (i = 0; i < RelationFactor::SizeCommon; ++i)
    serialisationList.append(QByteArray::number(commonRF[i]));

  for (i = 0; i < RelationFactor::SizeLanguages; ++i)
    serialisationList.append(QByteArray::number(languagesRF[i]));

  for (i = 0; i < RelationFactor::SizeMusic; ++i)
    serialisationList.append(QByteArray::number(musicRF[i]));

  for (i = 0; i < RelationFactor::Interests::SizeArt; ++i)
    serialisationList.append(QByteArray::number(interestsRF[i]));

  for (i = 0; i < RelationFactor::Interests::SizeSport; ++i)
    serialisationList.append(QByteArray::number(sportRF[i]));

  for (i = 0; i < RelationFactor::Interests::SizeIntelligent; ++i)
    serialisationList.append(QByteArray::number(intelligentRF[i]));

  for (i = 0; i < RelationFactor::Interests::SizeEtc; ++i)
    serialisationList.append(QByteArray::number(etcRF[i]));

  return Serialization::universalSerialize(serialisationList);
}

uint Relationship::sizeAllRelationship() {
  return RelationFactor::SizeCommon + RelationFactor::SizeLanguages +
         RelationFactor::SizeMusic + RelationFactor::Interests::SizeArt +
         RelationFactor::Interests::SizeSport +
         RelationFactor::Interests::SizeIntelligent +
         RelationFactor::Interests::SizeEtc;
}
