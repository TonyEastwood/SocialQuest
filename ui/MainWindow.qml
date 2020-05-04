import QtQuick 2.0
import QtQuick.Controls 2.12
import "MainPages"
import "Bars"
Item {
    id:root
    width: 360
    height: 652

    TopBar{
        id: topBar
        anchors.top: parent.top
        anchors.bottom: view.top
    width: parent.width
    height: 35

    }

    SwipeView {
           id: view
           anchors.top: topBar.bottom
           anchors.bottom: bottomBar.top
        height: parent.height-topBar.height-bottomBar.height
          width: parent.width


           HomePage {



           }
           Page {
               Rectangle{
                   anchors.fill:parent
                   color:"red"
               }
               Text
               {
                   text:"Search of quests"
                   color: "black"
               }
           }
           Page {
               Rectangle{
                   anchors.fill:parent
                   color:"black"
               }
               Text
               {
                   text:"Chat etc."
                   color: "white"
               }
           }
           ProfilePage {
                width: view.width
                height: view.height

           }
       }
    BottomBar{

    onCurrentPageIndexChanged: view.currentIndex=currentPageIndex
    id:bottomBar
    width: parent.width
    height: 35
     anchors.bottom: parent.bottom
    }
}
