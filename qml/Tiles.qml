import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: root

    color: "black"

    RowLayout {
        anchors.fill: parent

        Grid {
            Layout.fillHeight: true
            Layout.preferredWidth: parent.width / 2
            id: redSource

            Repeater {
                model: 9
                delegate: DragTile { colorKey: "red" }
            }
        }

        DropTile {
            Layout.fillHeight: true
            Layout.preferredWidth: parent.width / 2
            id: redDestination

            opacity: 0.5
            colorKey: "red"
        }
    }
}
