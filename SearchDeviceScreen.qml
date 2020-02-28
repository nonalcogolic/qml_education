import QtQuick 2.14

Background {
    id: root

    property int listSize: 0

    function insertItem(text){
        view_component.insertElem(text)
    }

    signal back
    signal itemSelected(index: int)
    signal searchAgain

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
            //   NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 100 }
           }

        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 200; easing.type: Easing.OutBounce }
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

        Button {

            width:  ListView.view.width
            height: 35
            text: 'Footer'

            onClicked: {
                root.insertItem(view_component.count) //dbg
                root.searchAgain()
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

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.itemSelected(index)
                    console.log(index)
                }
            }
        }
    }
}
