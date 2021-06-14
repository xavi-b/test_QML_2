import QtQuick 2.0

Flickable {
    property string colorKey
    property alias dropProxy: dragTarget

    contentWidth: image.width
    contentHeight: image.height
    clip: true

    Image {
        id: image
        source: "qrc:///images/image.jpg"

        DropArea {
            id: dragTarget

            keys: [ colorKey ]

            anchors.fill: parent
        }
    }
}
