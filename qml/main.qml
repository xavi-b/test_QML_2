import QtQuick 2.15
import QtQuick.Window 2.15
import "qrc:///qml/"

Window {
    id: window
    height: 480
    width: height*2
    visible: true;
    color: "black"
    title: "First Window"

    Tiles {
        anchors.fill: parent
    }
}
