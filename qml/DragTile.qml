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
            var oldParent = root.parent
            root.parent = root.Drag.target !== null ? root.Drag.target : root.parent
            console.log(root.parent)
            var pos = root.parent.mapFromItem(oldParent, root.x, root.y)
            console.log(pos)
            root.x = pos.x < 0 ? 0 : (pos.x > root.parent.width - root.width ? root.parent.width - root.width : pos.x)
            root.y = pos.y < 0 ? 0 : (pos.y > root.parent.height - root.height ? root.parent.height - root.height : pos.y)
        }
    }
}
