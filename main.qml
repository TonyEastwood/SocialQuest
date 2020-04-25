import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import "ui"
ApplicationWindow {
    visible: true
    width: 360
    height: 652
    title: qsTr("Hello World")
    color:"green"
    MainWindow{
        width: parent.width
        height: parent.height
    }
}
