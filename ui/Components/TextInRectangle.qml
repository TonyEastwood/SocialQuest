import QtQuick 2.0

Rectangle {
    width: textInr.width
    height:  textInr.height
    property string innerText;
    property int fontSize:0;
    Text{
        font.pixelSize: fontSize==0? 11 : fontSize
        id:textInr
        text:innerText
    }

}
