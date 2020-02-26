import QtQuick 2.14

Background {
    id: root
    Column {
        Text{
            text: "Athlete name:"
            color: "white"
         //   height: 12
        }

        CustomTextEdit {
            width: root.width
            height: 30

        }
    }
}
