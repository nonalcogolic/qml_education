import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: root
    visible: true
   // width: settings.width
 //   height: settings.height
//    height: 480
    title: qsTr("Hello World")

     SettingsMain {
         id: settings
         width: root.width
         height: root.height

     }


 /*


    Column {
        spacing: 10


        AnimatedAddAndRemove {
        }


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

        ShapeShifting {

        }
        PathViewExample {

        }



    }
    DelegateExample {
        orientation: ListView.Horizontal
        width: 480
        height: 80
    }



    }
*/

}
