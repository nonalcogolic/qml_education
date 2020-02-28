import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

ApplicationWindow  {
    id: root
    visible: true
   // width: settings.width
 //   height: settings.height
    height: 600
    width: 280
    title: qsTr("Hello World")


     SwipeView {
             id: swipeView
             anchors.fill: parent
             currentIndex: 1


             SettingsMain {
                 id: settings
              //   width: root.width
              //   height: root.height
             }


             MainMenu {
                 id: main_menu
              //   width: root.width
              //   height: root.height
             }

     }

     PageIndicator {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        currentIndex: swipeView.currentIndex
        count: swipeView.count
    }


}
