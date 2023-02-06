//tripmeter
import QtQuick 2.15
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
Item {
    anchors.bottom: speedValue.top
Text{
            id: distance
       text: "DISTANCE (km)"
       font.pointSize: 10
       color: "white"
       font.weight: Font.DemiBold
       anchors.horizontalCenter: zero.horizontalCenter
                anchors.bottom: rect1.top
     }
Text{
                id: zero

        text: "0000"
        font.pointSize: 25
        color: "white"
        font.weight: Font.DemiBold
       }



Rectangle {
              id:rect1
              width: 115
              height: 4
              color: "white"
              anchors.bottom: zero.top
              anchors.horizontalCenter: zero.horizontalCenter

              }
Rectangle {
                        id:rect2
             width: 115
             height: 4
             color: "white"
            anchors.top: zero.bottom
            anchors.horizontalCenter: zero.horizontalCenter

}
Rectangle {
                        id:rect3
             width: 100
             height: 4
             color: "white"
             anchors.horizontalCenter: zero.horizontalCenter
             anchors.top: rect2.bottom

}
}
