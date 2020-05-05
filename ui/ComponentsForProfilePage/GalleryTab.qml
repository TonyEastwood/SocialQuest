import QtQuick 2.14
import QtQuick.Controls 2.14
Item{
    id: imageViewer
    //height: parent.height
   // width: parent.width
    //y:
   // anchors.top: parent.top
   // onYChanged: console.log("margin="+imageViewer.anchors.topMargin);
    //anchors.topMargin: -flickItem.contentY//dndGrid.contentHeight*scrollVertical.position
  //  anchors.bottom: parent.bottom
    Rectangle {
        id:blackScreen
        //anchors.fill: parent
        width: parent.width
        height: parent.height*2
        y:-parent.height
        color: 'black'
        opacity: -imageViewer.y/234

      //  y:dndGrid.y

    }
    Rectangle {
        //anchors.fill: parent
        width: parent.width
        height: 600
        color: 'black'
        focus: true
      //  y:dndGrid.y

    }
    GridView {
           id: dndGrid
            // anchors.fill: parent
           width: parent.width
           height: 600
           clip: true
           interactive: imageViewer.y==-234? true: false
           anchors.margins: 10
           cellWidth: 110
           cellHeight: 110
           model: dndModel
           delegate: dndDelegate
           ScrollIndicator.vertical: ScrollIndicator {
               id:scrollVertical
               active: dndGrid.contentHeight / dndGrid.height > 1
                onPositionChanged:
                {

                    console.log("position="+scrollVertical.position)
                    console.log("contentY="+dndGrid.contentY)
                    console.log("threshold="+mouseDragArea.drag.threshold)
                }

           }

       }

    Component {
         id: dndDelegate
         Item {
             id: wrapper
             width: dndGrid.cellWidth
             height: dndGrid.cellHeight
             Image {
                 id: itemImage
                 source: imagePath
                 anchors.centerIn: parent
                 width: 100
                 height: 100
                 smooth: true
                 fillMode: Image.PreserveAspectFit
             }
         }
     }
    ListModel {
           id: dndModel
           ListElement { imagePath: "qrc:/testresources/testDir/images/1.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/2.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/3.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/4.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/5.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/6.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/7.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/8.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/9.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/10.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/11.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/12.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/13.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/14.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/15.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/16.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/17.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/18.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/19.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/20.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/21.jpg" }
           ListElement { imagePath: "qrc:/testresources/testDir/images/14.jpg" }


       }
//    Flickable{
//        id:flickItem
//        width: parent.width; height: parent.width
//        contentWidth: width; contentHeight: 4*height
//        interactive:imageViewer.anchors.topMargin<-231? false: true


//    }
    PropertyAnimation{
                id: animationDrop
                target: imageViewer
                properties: "y"
                to: imageViewer.y<=-60? -234: 0
                duration: 200
                }


    MouseArea {
        id:mouseDragArea
        anchors.fill: parent
        drag.target: imageViewer
        drag.axis: Drag.YAxis
        drag.minimumY: -234
        drag.maximumY: 0
        onMouseYChanged: console.log("y="+imageViewer.y)
        enabled: dndGrid.contentY<=5? true : false//imageViewer.y<=-234? false: true

        onReleased: animationDrop.start()
    }
}
