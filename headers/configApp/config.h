#ifndef CONFIG_H
#define CONFIG_H
#include <QByteArray>

namespace Config {
enum Language {
  RUSSIAN = 0,
  UKRANIAN = 1,
  ENGLISH = 2

};
static QByteArray getPathToQuestions(int language) {
  if (language == RUSSIAN) return "lang/rus/questions.db";
  if (language == UKRANIAN) return "lang/ukr/questions.db";
  if (language == ENGLISH) return "lang/eng/questions.db";
  return "";
}

}  // namespace Config

#endif  // CONFIG_H
