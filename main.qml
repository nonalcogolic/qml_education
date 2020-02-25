import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: columnInside.width
    height: columnInside.height
//    height: 480
    title: qsTr("Hello World")

    Column {
        id: columnInside

    Row {
        id:rowInside

        spacing: 16
        RepeaterExample {
            id: repeaterinside

        }

        DelegateExample {
            width: 80
            height: 300

        }

        SelectableListView {

        }

        CustomDelegate {

        }

    }
    DelegateExample {
        orientation: ListView.Horizontal
        width: 480
        height: 80
    }

    }


}
