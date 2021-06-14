import QtQuick 2.0

Rectangle {
    id: root

    width: 64
    height: 64

    required property string colorKey
    required property int modelData

    color: root.colorKey

    Drag.keys: [ root.colorKey ]
    Drag.active: mouseArea.drag.active
    Drag.hotSpot.x: 32
    Drag.hotSpot.y: 32

    Text {
        anchors.fill: parent
        color: "white"
        font.pixelSize: 48
        text: root.modelData + 1
        horizontalAlignment:Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: mouseArea

        anchors.fill: root

        drag.target: root

        onReleased: {
            root.parent = root.Drag.target !== null ? root.Drag.target : root.parent
            //TODO
//            root.x = mouse.x
//            root.y = mouse.y
            console.log(root.parent)
        }
    }
}
