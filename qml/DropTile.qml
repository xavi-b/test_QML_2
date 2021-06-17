import QtQuick 2.0

Flickable {
    property alias dropProxy: dragTarget

    contentWidth: image.width
    contentHeight: image.height
    clip: true

    Image {
        id: image
        source: "qrc:///images/image.jpg"

        DropArea {
            id: dragTarget
            anchors.fill: parent
        }
    }
}
