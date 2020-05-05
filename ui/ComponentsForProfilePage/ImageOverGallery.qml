import QtQuick 2.0

Item {
    id:root
    property string sourceToImage: "qrc:/testresources/testDir/images/14.jpg"
    Rectangle{
        id:blankScreenArea
        anchors.fill: parent
        color:"black"
    }

    Image{
        id:imageId
        source:sourceToImage
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
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
