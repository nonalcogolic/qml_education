import QtQuick 2.14


Background {
    id: root

 //   property alias orientation : listView.orientation
    property int elementSize : 30
    property int highlightedElementSize : 36

    ListView {
        id: listView
        height: root.height
        width: root.width
        anchors.left: root.left
        anchors.right: root.right
    //    anchors.fill: parent

        spacing: 5
        anchors.margins: 20
   //     anchors.margins: width - spacing - elementSize - highlightedElementSize / 2
        orientation: ListView.Horizontal

        clip: true

        model: 16

        currentIndex: 7

        delegate: numberDelegate
        preferredHighlightBegin: width / 2 - highlightedElementSize/2
        preferredHighlightEnd: width / 2 + highlightedElementSize/2
        highlightRangeMode: ListView.StrictlyEnforceRange
    }

    Component {
        id: numberDelegate
        GreenBox {
            width: ListView.isCurrentItem ? highlightedElementSize : elementSize
            height: ListView.isCurrentItem ? highlightedElementSize : elementSize
            y: ListView.isCurrentItem ? listView.y : listView.y + 3
            text: index + 1

         //   anchors.centerIn: ListView.isCurrentItem ? listView.horizontalCenter : undefined


            border.color: ListView.isCurrentItem ? Qt.lighter("red") : Qt.lighter(color)

            onClicked: {
                listView.currentIndex = index
                console.log("CLICKED #" + listView.currentIndex)
            }
        }



    }
}
