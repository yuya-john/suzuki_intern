// Update version of Footer.qml

import QtQuick 2.15

Item {
    width: 50
    height: 540

    Column {
        readonly property size telltaleSize: Qt.size(40, 40)
        property bool isBrake: true
        property bool isEngine: false
        property bool isBattery: true
        property bool isCoolant: false
        property bool isSeatbelt: true
        property bool isFuel: true

        spacing: 30
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            source: "qrc:/images/telltale/brake.png"
            sourceSize: parent.telltaleSize
            opacity: parent.isBrake == true ? 1 : 0.3
        }

        Image {
            source: "qrc:/images/telltale/engine.png"
            sourceSize: parent.telltaleSize
            opacity: parent.isEngine == true ? 1 : 0.3
        }

        Image {
            source: "qrc:/images/telltale/battery.png"
            sourceSize: parent.telltaleSize
            opacity: parent.isBattery == true ? 1 : 0.3
        }

        Image {
            source: "qrc:/images/telltale/coolant.png"
            sourceSize: parent.telltaleSize
            opacity: parent.isCoolant == true ? 1 : 0.3
        }

        Image {
            source: "qrc:/images/telltale/seatbelt.png"
            sourceSize: parent.telltaleSize
            opacity: parent.isSeatbelt == true ? 1 : 0.3
        }

        Image {
            source: "qrc:/images/telltale/fuel.png"
            sourceSize: parent.telltaleSize
            opacity: parent.isFuel == true ? 1 : 0.3
        }
    }
}
