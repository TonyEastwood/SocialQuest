import QtQuick 2.0

Item {
    id:root
    Rectangle{
        id:tab1
        width: root.width/3
        height: root.height
        color: "green"
    }

    Rectangle{
        id:tab2
        width: root.width/3
        height: root.height
        anchors.left: tab1.right
        color: "red"
    }
    Rectangle{
        id:tab3
        width: root.width/3
        height: root.height
        anchors.left: tab2.right
        color: "black"
    }
}
