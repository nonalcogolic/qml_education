import QtQuick 2.14

Item {
    id: root

    anchors.margins: 10

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
        anchors.fill: rect
        color: "white"
        //font: 12
    }


}
