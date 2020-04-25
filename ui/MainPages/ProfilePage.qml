import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../Components"
import "../ComponentsForProfilePage"
ListView {

    //fone
    Rectangle{
        anchors.fill: parent
        color: "#E5E5E5"
    }

    //profile image
    Rectangle{
        id: profileImage
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 8

        height: 80
        width: 80

        radius: 80


        color:"grey"
    }

    //level
    TextInRectangle
    {
        id:lvl

       // anchors.left: parent.left
        //anchors.leftMargin: 25
        anchors.horizontalCenter: profileImage.horizontalCenter
        anchors.top: profileImage.bottom
        anchors.topMargin: 8
        fontSize:11
        innerText:"lvl"
    }

    //username
    TextInRectangle
    {
        id:userName

        anchors.left: profileImage.right
        anchors.leftMargin: 22
        anchors.top: parent.top
        anchors.topMargin: 12
        innerText:"userName"
        fontSize:13
        color:"#C4C4C4"
    }

    //age
    TextInRectangle
    {
        id:age

        anchors.left: userName.left
        anchors.top: userName.bottom
        anchors.topMargin: 10
        innerText:"age"

         color:"#F4EEEE"
    }

    //location
    TextInRectangle
    {
        id:location

        anchors.left: userName.left
        anchors.top: age.bottom
        anchors.topMargin: 10
        innerText:"location"

          color:"#F4EEEE"
    }

    //main interest
    TextInRectangle
    {
        id:interests

        anchors.left: userName.left
        anchors.top: location.bottom
        anchors.topMargin: 10
        innerText:"main interests"

          color:"#F4EEEE"
    }

    //message
    TextInRectangle
    {
        id:message

        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.topMargin: 146
        innerText:"message"
        fontSize:13
          color:"#F4EEEE"
    }

    //add to contacts
    TextInRectangle
    {
        id:addToContacts

        anchors.right: parent.right
        anchors.rightMargin: 52
        anchors.top: parent.top
        anchors.topMargin: 146
        innerText:"add to contacts"
         fontSize:13
          color:"#F4EEEE"
    }
    TabView{
        id:tabView

        anchors.top: message.bottom
        anchors.topMargin: 18
        width: parent.width
        anchors.bottom: parent.bottom



       Tab{
           title: "Profile"
           ProfileTab{
               anchors.fill: parent
           }

          // anchors.fill: tabView
       }
       Tab{
            title: "Quests"
       QuestsTab {

           Rectangle { color: "blue" }
          }
       }

        Tab{
             title: "Gallery"
       GalleryTab {
             anchors.fill: parent
           Rectangle { color: "green" }

          }
       }

        style: TabViewStyle {
               frameOverlap: 1
               tab: Rectangle {
                   color: styleData.selected ? "steelblue" :"lightsteelblue"
                   border.color:  "steelblue"
                   implicitWidth: 120
                   implicitHeight: 40
                   radius: 2
                   Text {
                       id: text
                       anchors.centerIn: parent
                       text: styleData.title
                       color: styleData.selected ? "white" : "black"
                   }
               }
               frame: Rectangle { color: "#E5E5E5" }
           }
    }

}
