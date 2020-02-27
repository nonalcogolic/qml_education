import QtQuick 2.14


Background {
    id: root

 //   property alias orientation : listView.orientation

    ListView {
        id: listView
        height: root.height
        width: root.width
        anchors.left: root.left
        anchors.right: root.right
    //    anchors.fill: parent
        anchors.margins: 20
        orientation: ListView.Horizontal

        clip: true

        model: 16

        currentIndex: 7

        delegate: numberDelegate
        spacing: 5
    }

    Component {
        id: numberDelegate

        GreenBox {
            width: 30
            height: 30
            text: index + 1

            border.color: ListView.isCurrentItem ? Qt.lighter("red") : Qt.lighter(color)

            onClicked: {
                listView.currentIndex = index
                console.log("CLICKED #" + currentIndex)
            }
        }



    }
}
