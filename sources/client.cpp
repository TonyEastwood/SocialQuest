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

  initialize();
  initializePaths();

  (*mainApp).exec();
}

void Client::initialize() {
  myNetwork = new Network();
  myNeuro = new NeuroNet();
  myRelation = new Relationship(userId);
  myQuestions = new QuestionManager(Config::getPathToQuestions(nativeLanguage));
}

Client::~Client() {
  delete myNeuro;
  delete myRelation;
  delete myNetwork;
  delete myQuestions;
}

void Client::initializePaths() {
  QDir().mkpath(Paths::pathToRelationshipLocalFile);
}
