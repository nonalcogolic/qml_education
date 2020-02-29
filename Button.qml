import QtQuick 2.0

Item {
    id:root
    signal clicked
    property alias  text: text.text
    property alias  color: rectangle.color


    anchors.margins: 10

    property color pressed_collor : "#111111"
    property color released_collor : "#222222"

    Rectangle {
        id : rectangle
        anchors.fill: parent
        color:  released_collor
        opacity: 0.5
        border.color: Qt.darker("white")
        radius: 4
    }

    Text {
        id: text
        color: "white"
        anchors.fill: rectangle
        anchors.margins: 4
        font.pointSize:  12
        horizontalAlignment : TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        anchors.centerIn: root.Center
    }


    MouseArea {
        width: rectangle.width
        height: rectangle.height

        onClicked: root.clicked()
        onPressed: rectangle.color = pressed_collor
        onReleased: rectangle.color = released_collor
    }
}
