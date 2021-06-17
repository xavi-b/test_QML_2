import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    id: root

    color: "black"

    RowLayout {
        anchors.fill: parent

        Grid {
            Layout.fillHeight: true
            Layout.preferredWidth: parent.width / 2
            id: leftRectangle

            Component.onCompleted: {
                for (var i = 0; i < 9; ++i) {
                    var e = "draggable" + i
                    console.log("Creating: " + e)
                    var comp = Qt.createComponent("DragTile.qml");
                    var obj = comp.createObject(leftRectangle);
                    obj.objectName = e
                    obj.source = "qrc:///images/small.jpg"
                }
            }
        }

        DropTile {
            Layout.fillHeight: true
            Layout.preferredWidth: parent.width / 2
            id: rightRectangle

            opacity: 0.5
        }
    }

    Button {
        id: refreshButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Refresh"
        onClicked: {
            // clear children
            console.log("Clearing")
            for (var i = 0; i < rightRectangle.dropProxy.children.length; i++) {
                console.log("Clearing: " + rightRectangle.dropProxy.children[i].objectName)
                rightRectangle.dropProxy.children[i].destroy()
            }

            for (var e in list1) {
                console.log("Creating: " + e)
                var comp = Qt.createComponent("DragTile.qml");
                var obj = comp.createObject(rightRectangle.dropProxy);
                obj.objectName = e
                obj.x = list1[e].x
                obj.y = list1[e].y
                obj.source = list1[e].source
            }
        }
    }
}
