#include "../headers/client.h"

Client::Client(QGuiApplication *mainApp) {
  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/main.qml"));
  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreated, mainApp,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl) QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  Initialize();

  (*mainApp).exec();
}

void Client::Initialize() {
  myNetwork = new Network();
  myNeuro = new NeuroNet();
  myRelation = new Relationship();
  myQuestions = new QuestionManager(Config::getPathToQuestions(nativeLanguage));
}

Client::~Client() {
  delete myNeuro;
  delete myRelation;
  delete myNetwork;

  delete myQuestions;
}
