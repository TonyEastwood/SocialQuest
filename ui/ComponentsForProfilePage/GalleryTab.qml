import QtQuick 2.14
import QtQuick.Controls 2.14
import "ListModels"
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
        height: 652
        color: 'black'
        focus: true
      //  y:dndGrid.y

    }
    GridView {
           id: dndGrid
            // anchors.fill: parent
           width: parent.width
           height: 330-imageViewer.y
           clip: true
           interactive:true// imageViewer.y<=-234? true: false
          // anchors.horizontalCenter: parent
          // anchors.leftMargin: 10
         //  anchors.rightMargin : 10
           y:15

         //  anchors.margins: 10

           cellWidth: 120
           cellHeight: 120
           model: dndModel
           delegate: dndDelegate
           ScrollIndicator.vertical: ScrollIndicator {
               id:scrollVertical
               active: dndGrid.contentHeight / dndGrid.height > 1
                onPositionChanged:
                {

                    console.log("position="+scrollVertical.position)
                    console.log("contentY="+dndGrid.contentY)
                    //console.log("threshold="+mouseDragArea.drag.threshold)
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
                 width: 110
                 height: 110
                 smooth: true
                 fillMode: Image.PreserveAspectFit

                 MouseArea {

                        anchors.fill: parent
                        onReleased: {
                            if(imageOverGalleryId.visible==false){
                            console.log("clicked on image")

                          //  imageOverGalleryId.sourceToImage =parent.source
                                  imageOverGalleryId.currentImageIndex=index

                        imageOverGalleryId.visible=true


                        animationTopDrop.start()
                            }
                        }
                    }
             }
         }
     }
    GalleryModel{
        id: dndModel
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
    PropertyAnimation{
                id: animationTopDrop
                target: imageViewer
                properties: "y"
                to: -234
                duration: 200
                }


    MouseArea {
        id:mouseDragArea
       // anchors.fill: parent
        anchors.top: imageViewer.top
        width: imageViewer.width
        height: 70
        drag.target: imageViewer
        drag.axis: Drag.YAxis
        drag.minimumY: -234
        drag.maximumY: 0
        onMouseYChanged: console.log("y="+imageViewer.y)
       // enabled: dndGrid.contentY<=5? true : false//imageViewer.y<=-234? false: true
        enabled: !imageOverGalleryId.visible
        onReleased: animationDrop.start()


    }

    ImageOverGallery{

        id:imageOverGalleryId
        z:3
        visible: false
        width: parent.width
        height:652
      //  sourceToImage:
    }

}
