import QtQuick 2.14

Background {
    id: root
    width: 240
    height: 300

    property int listSize: 0

    ListView {
        id: view_component
        anchors.fill: parent
        anchors.margins: 20

        clip: true

        function insertElem() {
             model.insert(model.count , { "name": "Item " + model.count })
        }

       // model: listSize
        model: ListModel {}

        delegate: numberDelegate
        spacing: 5

        highlight: highlightComponent
        focus: true
    //    highlightRangeMode: ListView.ApplyRange

      //  header: headerComponent
        footer: footerComponent

        add: Transition {
               NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 400 }
               NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 400 }
           }

        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
        }

        Keys.onSpacePressed: insertElem()
    }


 /*   Component {
        id: headerComponent

        YellowBox {
            width: ListView.view.width
            height: 20
            text: 'Header'

        }
    }*/

    Component {
        id: footerComponent

        YellowBox {
            width: ListView.view.width
            height: 20
            text: 'Footer'

            onClicked: {
                addElements(5)
                color = Qt.darker(color)
            }

            function addElements(number) {
                console.log("Clicked")
                for ( var idx = 0; idx < number; ++idx )
                {
                   // delay(100)
                    view_component.insertElem()
                }
            }
            function delay(duration) { // In milliseconds
                var timeStart = new Date().getTime();

                while (new Date().getTime() - timeStart < duration) {
                    // Do nothing
                }

                // Duration has passed
            }
        }


      }

    Component {
        id: highlightComponent

        GreenBox {
            width: ListView.view.width
        }
    }

    Component {
        id: numberDelegate


        Item {
            width: ListView.view.width
            height: 40
         //   color: ListView.isCurrentItem ? "#f0f0f0" : "white"
         //   border.color: Qt.lighter(root.color)

            Text {
                anchors.centerIn: parent

                font.pixelSize: 10

                text: index
            }
        }
    }
}
