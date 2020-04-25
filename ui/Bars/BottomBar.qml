import QtQuick 2.0

Item {
    property int currentPageIndex: 0
    Rectangle{
        anchors.fill: parent
    color:"white"

    Rectangle{
        id:rect1
       height: parent.height
       width: parent.width/4
       anchors.left: parent.left
       color: "green"
       MouseArea{
           anchors.fill: parent
           onClicked: currentPageIndex=0
       }
    }

    Rectangle{
          id:rect2
       height: parent.height
       width: parent.width/4
       anchors.left: rect1.right
       color: "red"

       MouseArea{
           anchors.fill: parent
           onClicked: currentPageIndex=1
       }
    }

    Rectangle{
          id:rect3
       height: parent.height
       width: parent.width/4
       anchors.left: rect2.right
       color: "black"

       MouseArea{
           anchors.fill: parent
           onClicked: currentPageIndex=2
       }
    }

    Rectangle{
          id:rect4
       height: parent.height
       width: parent.width/4
       anchors.left: rect3.right
       color: "yellow"

       MouseArea{
           anchors.fill: parent
           onClicked: currentPageIndex=3
       }
    }
    }
}
