import QtQuick 2.14

Background {
    id: root



    TimePanel {
        id: time_panel
        anchors.top: root.top
        anchors.right: root.right
        anchors.left: root.left
        anchors.topMargin: 10
        y: 10
        height: 40
    }


/*
    Button {
        id: start_but
        anchors.right: root.right
        anchors.left: root.left
        anchors.bottom: root.bottom
        anchors.bottomMargin: 20
        height: 35
        text: "Start"

        onClicked: { layout.visible = true; visible = false }
    }*/

  /*  Row {
        id: layout
      anchors.bottom: root.bottom
      anchors.bottomMargin: 20
  //    anchors.right: root.right
  //    anchors.left: root.left
  //    width: root
        height: 40
        spacing: 10

        BlueBox { width: layout.width/2 - spacing/2 }
        BlueBox { width: layout.width/2 - spacing/2 }

    }*/

    MainControlPan {
        height: 35
        anchors.right: root.right
        anchors.left: root.left
        anchors.bottom: root.bottom
        anchors.bottomMargin: 20

        onNewLap: {
            time_panel.text = text
        }
    }

}
