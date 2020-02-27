import QtQuick 2.0

Item {
    id:root
    signal clicked
    property alias  text: text_input.text
    property alias  color: rectangle.color

    property color pressed_collor : "#111111"
    property color released_collor : "#222222"

    Rectangle {
        id : rectangle
        width: root.width
        height: root.height
        color:  released_collor
        border.color: Qt.darker("white")
        radius: 4
    }

    TextInput {
        id: text_input
        width: root.width
        height: root.height
        color: "white"
       // anchors.fill: parent
        anchors.margins: 4
        font.pointSize:  12
        horizontalAlignment : TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        anchors.centerIn: root.Center
    }


    MouseArea {
        width: root.width
        height: root.height

        onClicked: root.clicked()
        onPressed: rectangle.color = pressed_collor
        onReleased: rectangle.color = released_collor
    }
}
