import QtQuick 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.12

Item{
                id: childRect
                Rectangle {
                    id:childrenRect
                    width: 400
                    height: 400
                    x:176 -20
                    y:176 -70
                    //x:-200
                    //y:-200
                    ConicalGradient {
                           anchors.fill: childrenRect
                           angle: 180
                           gradient: Gradient {
                               GradientStop { position: 0.0; color: "white" }
                               GradientStop { position: 1.0; color: "black" }
                           }
                       }
                }
            }
