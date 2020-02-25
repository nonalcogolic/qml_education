import QtQuick 2.14

Rectangle {
    id: root
    width: 48
    height: 48
    color: "#eaea00"
    border.color: Qt.lighter(color)
    property alias text: title.text
    signal clicked

    Text {
        id: title
        width: root.width
        anchors.centerIn: parent

        horizontalAlignment: Text.AlignHCenter
     //   text: "some text"

    }

    MouseArea {
        width: root.width
        height: root.height
        onClicked: root.clicked()
    }
}
