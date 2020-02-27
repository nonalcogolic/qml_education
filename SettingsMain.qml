import QtQuick 2.14

Background {
    id: root

    property int common_pading : 10

    Column {
        id: column
        spacing: 10


        anchors.top: root.top
        anchors.topMargin: common_pading
      //  anchors.right: root.right
        x: root.x + root.common_pading
        width: root.width - 2 * root.common_pading
    //    anchors.centerIn: root.horizontalCenter
     //   padding: 10
       // property int internal_width : width - padding*2
      //  rightPadding: 10

        Text{
            text: "Athlete name:"
            color: "white"
         //   height: 12
        }

        CustomTextEdit {
     //       width: root.width
            anchors.left: column.Left
            anchors.right: column.Right
            width: column.width
            height: 30
            text: "Unknown"
        }

        Text{
            text: "Number of points:"
            color: "white"
         //   height: 12
        }

        NumberOfPointsScroll {
            height: 35
            width: column.width

            anchors.left: column.left
            anchors.right: column.right
        }     
    }

    Button{
        text: "No device connected"
        anchors.horizontalCenter: root.horizontalCenter
        anchors.bottom: connect_button.top
        anchors.bottomMargin: common_pading
        width: column.width
        height: 35
      //  color: "white"
     //   height: 12
        onClicked: console.log("Device")
    }

    Button{
        id: connect_button
        text: "Find new"
        anchors.horizontalCenter: root.horizontalCenter
        anchors.bottom: root.bottom
        anchors.bottomMargin: common_pading


        width: column.width
        height: 35
        onClicked: console.log("Find new")
    }
}
