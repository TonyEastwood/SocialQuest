import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Components"
Item{
   // anchors.fill: parent
    TextInRectangle
    {
        id:xpForWeek

        anchors.left: parent.left
        anchors.leftMargin: 52
        anchors.top: parent.top
        anchors.topMargin: 15

        fontSize:11

        innerText:"XP for this week"

        color:"#C4C4C4"
    }

    TextInRectangle
    {
        id:xpForWholeTime

        anchors.left: xpForWeek.right
        anchors.leftMargin: 88
        anchors.top: parent.top
        anchors.topMargin: 15

        fontSize:11

        innerText:"XP for whole time"

        color:"#C4C4C4"
    }

    TextInRectangle
    {
        id:questsForWeek

        anchors.left: xpForWeek.left
        anchors.top: xpForWeek.bottom
        anchors.topMargin: 5

        fontSize:11

        innerText:"quests: 4"

        color:"#C4C4C4"
    }
    TextInRectangle
    {
        id:pointsForWeek

        anchors.left: xpForWeek.left
        anchors.top: questsForWeek.bottom
        anchors.topMargin: 5

        fontSize:11

        innerText:"points: 47"

        color:"#C4C4C4"
    }

    TextInRectangle
    {
        id:questsForWholeTime

        anchors.left: xpForWholeTime.left
        anchors.top: xpForWholeTime.bottom
        anchors.topMargin: 5

        fontSize:11

        innerText:"quests: 17"

        color:"#C4C4C4"
    }
    TextInRectangle
    {
        id:pointsForWholeTime

        anchors.left: xpForWholeTime.left
        anchors.top: questsForWholeTime.bottom
        anchors.topMargin: 5

        fontSize:11

        innerText:"points: 175"

        color:"#C4C4C4"
    }
    TextInRectangle
    {
        id:rating

        anchors.top: pointsForWeek.bottom
        anchors.topMargin: 5
        x:parent.width/2-width/2
        fontSize:11

        innerText:"rating: #5"

        color:"#C4C4C4"
    }

    Rectangle{
        id:graphic

        anchors.top: rating.bottom
        anchors.topMargin: 10

        anchors.left: parent.left
        anchors.right: parent.right

        height: 150
        color:"green"
    }

    TextInRectangle
    {
        id:achievements

        anchors.top: graphic.bottom
        anchors.topMargin: 10
        x:parent.width/2-width/2
        fontSize:11

        innerText:"achievements"

        color:"#C4C4C4"
    }



}
