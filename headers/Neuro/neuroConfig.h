#ifndef NEUROCONFIG_H
#define NEUROCONFIG_H
namespace RelationFactor {

enum Common {
  CommunicationPeople = 0,       // communication with other people (tet-a-tet)
  PhysicalContactPeople = 1,     // physical contact with people
  ContactWithThings = 2,         // physical contact with things
  CommunicationGroup = 3,        // communication with group (leader qualities)
  CommunicationEnvironment = 4,  // communication with unfamiliar people
  Speed = 5,                     // how fast can u be
  CraftSkill =
      6,  // interests in creature something new: painting, cutting, etc

  SizeCommon = 7

};
enum Languages {
  Japanese = 0,
  Russian = 1,
  Ukraine = 2,
  English = 3,
  France = 4,
  Spanish = 5,
  German = 6,
  Italian = 7,
  Chinese = 8,

  SizeLanguages = 9

};

enum Music {
  Folk = 0,
  classic = 1,
  Blues = 2,
  Jazz = 3,
  Country = 4,
  Electro = 5,
  HardRock = 6,
  AlternativeRock = 7,
  Pop = 8,
  Rap = 9,
  Trance = 10,
  Instrumental = 11,

  SizeMusic = 12
};

namespace Interests {
enum Art {
  Painting = 0,
  MusicPerformance = 1,
  Singing = 2,
  Photography = 3,
  Theater = 4,
  Museums = 5,
  Gallery = 6,
  Graffiti = 7,
  Design = 8,
  Designer3d = 9,
  Actor = 10,
  Poetry = 11,
  MusicCreating = 12,
  SiteDesign = 13,
  Handmade = 14,

  SizeArt = 15

};
enum Sport {
  Mountaineering = 0,
  Parachuting = 1,
  Diving = 2,
  Swimming = 3,
  Cycling = 4,
  Tennis = 5,
  Volleyball = 6,
  Basketball = 7,
  Football = 8,
  Dances = 9,
  Tourism = 10,
  Rollers = 11,
  Run = 12,
  PowerTraining = 13,
  Walking = 14,
  MartialArts = 15,
  Motorcycle = 16,

  SizeSport = 17

};
enum Intelligent {
  Meditation = 1,
  Reading = 2,
  Chess = 3,
  Crosswords = 4,
  Programming = 5,
  Mathematics = 6,

  SizeIntelligent = 7

};

enum Etc {
  Bowling = 0,
  Billiards = 1,
  Grow = 2,
  Cookery = 3,
  MafiaPlay = 4,
  WatchingFilms = 5,
  WatchingSerials = 6,
  WatchingFilmsWithSubtitle = 7,
  Volunteer = 8,
  Model = 9,
  Travels = 10,

  SizeEtc = 11

};

};  // namespace Interests
};  // namespace RelationFactor

#endif  // NEUROCONFIG_H
