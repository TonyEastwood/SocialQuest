#ifndef DATABASE_H
#define DATABASE_H

#include <QByteArray>
class DataBase {
 private:
  bool isExist = false;

 public:
  DataBase(QByteArray path);
  bool getIsExist() const;
};

#endif  // DATABASE_H
