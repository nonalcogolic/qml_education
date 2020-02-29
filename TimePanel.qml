import QtQuick 2.14

Item {
    id: root

    anchors.margins: 10

    property alias text: text.text

    Rectangle {
        id: rect
     //   height: 40
        color: "#111111"
        opacity: 0.5
       // width: root.width
       // height: root.height


        anchors.fill: root

        border.color: Qt.lighter("white")
    }

    Text {
        id: text
        anchors.fill: rect

        color: "white"
        text: "11:22:33.44"

        anchors.margins: 4
        font.pointSize:  rect.height - 10
        horizontalAlignment : Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }


}
