import QtQuick 2.14

Background {
    id: root

    property int listSize: 0

    signal back

    Button{
        id: back_button
        text: "Back"
        anchors.right: root.right
        anchors.left: root.left
        anchors.top: root.top

       // width: column.width
        height: 35
        onClicked: { root.back(); root.visible = false}
    }

    ListView {
        id: view_component
        anchors.right: root.right
        anchors.left: root.left
        anchors.top: back_button.bottom
        anchors.bottom: root.bottom
        anchors.margins: 20

        clip: true

        function insertElem(value) {
             model.insert(model.count , { "name": "Item " + value })
        }

        model: ListModel {}

        delegate: numberDelegate
        spacing: 5

      //  highlight: highlightComponent
        focus: true

      //  header: headerComponent
        footer: footerComponent

        add: Transition {
               NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 400 }
               NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 400 }
           }

        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
        }
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

   /*     Rectangle {
            id:spacing
            opacity: 0
            width:  ListView.view.width
            height: 5
        }*/

        Button {
           // x: root.x
          //  anchors.left: root.left
            width:  ListView.view.width
            height: 35
            text: 'Footer'
        //    anchors.topMargin: 10

            onClicked: {
                addElements(view_component.count)
                color = Qt.darker(color)
            }

            function addElements(number) {
                console.log("Clicked")
                view_component.insertElem(number)
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

            GreenBox {
               anchors.fill: parent
            }

            Text {
                anchors.centerIn: parent

                font.pixelSize: 10

                text: index
            }
        }
    }
}
