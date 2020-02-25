import QtQuick 2.14

Rectangle {
    id: root
    width: 48
    height: 48
    color: "#25ea70"
    border.color: Qt.lighter(color)
    property alias text: title.text

    Text {
        id: title
        width: root.width
        anchors.centerIn: parent

        horizontalAlignment: Text.AlignHCenter
     //   text: "some text"

    }
}
