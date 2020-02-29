import QtQuick 2.14

Item {
    id: root

    anchors.margins: 10

    property string state: "start"

    signal newLap(string text)


    Loader {
        id:loader
        // Explicitly set the size of the
        // Loader to the parent item's size
        anchors.fill: parent
        sourceComponent: start_layout
    }

    Component {
        id: start_layout
    Button {
        id: start_but

      //  anchors.centerIn: root
        height: root.height
        width: root.width
        text: "Start"

        onClicked: { loader.sourceComponent = active_layout }
    }
    }

    Component {
        id: active_layout

        Row {
            id: control_row

            spacing: 10

            Button {
                id: lap_but
           //     anchors.centerIn: root
                height: parent.height
                width: parent.width/2 - control_row.spacing/2

                text: "New lap"
                //  anchors.left: layout.left
                onClicked: { root.newLap("22:33:44.55") }
            }

            Button {
                id: stop_but
            //    anchors.centerIn: root
                height: parent.height
                width: parent.width/2 - control_row.spacing/2

                text: "Stop"
                //  anchors.left: layout.left
                 onClicked: { loader.sourceComponent = finished_layout }
            }

        }
    }


    Component {
        id: finished_layout

        Row {
            id: control_row

            spacing: 10

            Button {
                id: reset_but
                height: parent.height
                width: parent.width/2 - control_row.spacing/2
                text: "Reset"
                onClicked: { loader.sourceComponent = start_layout }
            }

            Button {
                id: statistic_but
                height: parent.height
                width: parent.width/2 - control_row.spacing/2
                text: "Statistic"
                 onClicked: { console.log("Statistic tbd") }
            }

        }
    }


}
