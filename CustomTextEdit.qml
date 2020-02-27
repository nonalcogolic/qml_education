import QtQuick 2.14

Item {
    id: root
    property alias text: text_input.text

    Rectangle {
        id: back_ground
        width: root.width
        height: root.height
        color: "black"
        border.color: Qt.lighter(color)
    }

    TextInput {
        id: text_input
        width: back_ground.width
        height: back_ground.height
        color: "white"
        anchors.fill: parent
        anchors.margins: 4
        font.pointSize:  12
        horizontalAlignment : TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        anchors.centerIn: back_ground
    }

}
