import QtQuick 2.12
import QtGraphicalEffects 1.12

Item {
    width: 300
    height: 300

    ConicalGradient {
        anchors.fill: parent
        angle: 0.0
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "black" }
        }
    }
}
