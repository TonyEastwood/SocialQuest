import QtQuick 2.14
import QtQuick.Dialogs 1.0
import QtQuick.Window 2.1
Item {
    id:root
    property string sourceToImage: "qrc:/testresources/testDir/images/14.jpg"
    property int highestZ: 0
    property var currentFrame: undefined

//    Rectangle{
//        id:blankScreenArea
//        anchors.fill: parent
//        color:"black"
//    }

//    Image{
//        id:imageId
//        width: root.width

//        height: root.height-2*y-35
//        y:5
//        source:sourceToImage
//       // anchors.fill: parent
//        fillMode: Image.PreserveAspectFit
//    }

    Rectangle {
        id: photoFrame

        anchors.fill: parent

        color: "black"


            Image {
                id: image
                width: photoFrame.width
                height:  photoFrame.height
                fillMode: Image.PreserveAspectFit
                source: sourceToImage
                antialiasing: true


            }




        PinchArea {
            id:pinchArea
            anchors.fill: parent
            pinch.target: image
            pinch.minimumRotation: -360
            pinch.maximumRotation: 360
            pinch.minimumScale: 0.1
            pinch.maximumScale: 100
            pinch.dragAxis: Pinch.XAndYAxis


            property real zRestore: 0


            MouseArea {
                id: dragArea
                hoverEnabled: true
                anchors.fill: parent
                drag.target: image
//                onClicked: {

//                    console.log("clicled lol")
//                    console.log("image width: "+image.x)
//                    console.log("image height: "+image.y)
//                    console.log("root width: "+root.width)
//                    console.log("root height: "+root.height)
//                }

                onReleased: {
                    animationScaleRestore.start()
                    animationRotationRestore.start()
                    animationXRestore.start()
                    animationYRestore.start()
                }

                scrollGestureEnabled: false  // 2-finger-flick gesture should pass through to the Flickable

            }
            PropertyAnimation{
                        id: animationScaleRestore
                        target: image
                        properties: "scale"
                        to: 1
                        duration: 200
                        }
            PropertyAnimation{
                        id: animationRotationRestore
                        target: image
                        properties: "rotation"
                        to: 0
                        duration: 200
                        }
            PropertyAnimation{
                        id: animationXRestore
                        target: image
                        properties: "x"
                        to: 0
                        duration: 200
                        }
            PropertyAnimation{
                        id: animationYRestore
                        target: image
                        properties: "y"
                        to: 0
                        duration: 200
                        }
//
        }
    }
    Rectangle{
        x:0
        y:0
        id:arrowBack
        width: 50
        height: 50
        color:"white"
        MouseArea{
            anchors.fill: parent
            onClicked: {
             root.visible=false
            }
        }
    }

}
