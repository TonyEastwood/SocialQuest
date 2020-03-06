#ifndef CLIENT_H
#define CLIENT_H

#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Network/network.h"
#include "Neuro/neuronet.h"
#include "Questions/questionmanager.h"
#include "Relationship/relationship.h"
#include "configApp/config.h"
class Client {
 private:
  int nativeLanguage = Config::ENGLISH;  // English
  NeuroNet* myNeuro;
  Relationship* myRelation;
  Network* myNetwork;
  QuestionManager* myQuestions;

 public:
  Client(QGuiApplication* mainApp);
  ~Client();

 private:
  void Initialize();
};

#endif  // CLIENT_H
