import QtQuick 2.14

Background {
    id: root



    TimePanel {
        anchors.top: root.top
        anchors.right: root.right
        anchors.left: root.left
        anchors.topMargin: 10
        y: 10
        height: 40
    }


    Button {
        anchors.bottom: root.bottom
        anchors.right: root.right
        anchors.left: root.left
        anchors.bottomMargin: 20
        height: 35
        text: "Start"
    }

}
