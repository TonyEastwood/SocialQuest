#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "headers/client.h"
int main(int argc, char *argv[]) {
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

  QGuiApplication app(argc, argv);
  Client client(&app);
}
