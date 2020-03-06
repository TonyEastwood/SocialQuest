#include "../../headers/Relationship/relationship.h"
Relationship::Relationship() {}

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
