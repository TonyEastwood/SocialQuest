import QtQuick 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.12
import QtQuick.Controls 1.4
import "../ComponentsForChatPage"
Page {
    id:root
    Rectangle{
        anchors.fill:parent
        color:"black"
    }
    TabView{
        anchors.fill: parent
        ChatTab{
        }
        AnonymousSearchTab{
        }
        style: TabViewStyle {
            //frameOverlap: 1
            tab: Rectangle {
                color: styleData.selected ? "steelblue" :"lightsteelblue"
                border.color:  "steelblue"
                implicitWidth: Math.max(root.width/2, 80)
                implicitHeight: 50
                radius: 2
                Text {
                    id: text
                    anchors.centerIn: parent
                    text: styleData.title
                    color: styleData.selected ? "white" : "black"
                }
            }
            frame: Rectangle { color: "steelblue" }
        }

    }

}
