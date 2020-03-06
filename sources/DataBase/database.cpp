#include "../../headers/DataBase/database.h"

bool DataBase::getIsExist() const { return isExist; }

DataBase::DataBase(QByteArray path) {
  //[CHANGE]
  // if db open
  // isExist=true
  // else isExist=false
}
