#ifndef CLIENT_H
#define CLIENT_H

#include <QDir>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Network/network.h"
#include "Neuro/neuronet.h"
#include "Questions/questionmanager.h"
#include "Relationship/relationship.h"
#include "configApp/config.h"

class Client {
 private:
  // configuration
  uint userId = 0;
  int nativeLanguage = Config::ENGLISH;  // English

  NeuroNet* myNeuro;
  Relationship* myRelation;
  Network* myNetwork;
  QuestionManager* myQuestions;

 public:
  Client(QGuiApplication* mainApp);
  ~Client();

 private:
  void initialize();
  void initializePaths();
};

#endif  // CLIENT_H
