#ifndef RELATIONSHIP_H
#define RELATIONSHIP_H

#include <QByteArray>
#include <QFile>
#include <QList>

#include "../Neuro/neuroConfig.h"
#include "../utils/utils.h"
class Relationship {
 private:
  uint _userId;

  int relationship[0];  //!!!!!!!!!!!!!!!! [CHANGE] on size all relationship
                        //  int commonRF[RelationFactor::SizeCommon] = {0};
  //  int languagesRF[RelationFactor::SizeLanguages] = {0};
  //  int musicRF[RelationFactor::SizeMusic] = {0};
  //  int interestsRF[RelationFactor::Interests::SizeArt] = {0};
  //  int sportRF[RelationFactor::Interests::SizeSport] = {0};
  //  int intelligentRF[RelationFactor::Interests::SizeIntelligent] = {0};
  //  int etcRF[RelationFactor::Interests::SizeEtc] = {0};

 public:
  Relationship(uint userId);
  Relationship(uint userId, QByteArray serializedAnswerList);

 public:
  void saveRelationshipLocal();
  bool loadRelationshipLocal();

 private:
  QByteArray serialize();
  uint sizeAllRelationship();
};

#endif  // RELATIONSHIP_H
