import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.4
import "../Components"
Tab {
    title: "Anonymous search"
    Rectangle{
        anchors.fill: parent
        TextInRectangle{
            id:selectM
            fontSize:20
            y: parent.height/2
            x: parent.width/4
            width: 50
            height: 50
            innerText:"M"
        }

        TextInRectangle{
            id:selectW
            fontSize: selectM.fontSize
            width: 50
            height: 50
            y:selectM.y
            x: parent.width/4*3

            innerText:"W"
        }
        TextInRectangle{
            id:buton1
            color: "Green"
            x:parent.width/2-width/2
            anchors.top: selectM.top
            anchors.topMargin: 25
            anchors.left: parent.left
            anchors.leftMargin:parent.width/2-width/2
            width: parent.width/2
            height: 50
            fontSize: 15
            innerText: "Search"
        }
    }


}
