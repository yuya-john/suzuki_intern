import QtQuick 2.15
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.12

import "qrc:/qml/tripmeter"

Item {
    width: 338
    height: 342

    ValueSource {
            id: valueSource
        }
    CircularGauge {
        id: tacho
           maximumValue: 200
           minimumValue: 0
           value: valueSource.kph



           style: CircularGaugeStyle {
               tickmarkStepSize: 20
               tickmark:Rectangle {
                   height: outerRadius * 0.05
                   width: outerRadius * 0.02
                   color: styleData.index >= 7 ? "#e34c22" : "#e5e5e5"
       }
               minorTickmark: Rectangle {
                   height: outerRadius * 0.02
                   width: outerRadius * 0.01
                   color: styleData.value >= 140 ? "#e34c22" : "#e5e5e5"
       }
               tickmarkLabel: Text {
                   font.pixelSize: 20
                   text: styleData.index * 20 //
                   color: styleData.index >= 7 ? "#e34c22" : "#e5e5e5"
       }
               foreground: Rectangle { //centercircle
                   width: outerRadius * 0.5
                   height: width
                   radius: width / 2
                   color: "#000000"
                   anchors.centerIn: parent
               }
       }
        Text {
               id:speedValue

               property int spdVal: valueSource.kph //

               font.pixelSize: 80
               text: spdVal//"0"
               color: "white"
               font.bold: true
               anchors.centerIn: tacho

       }
        Text {
               id: kmh
               text: "km/h"
               color: "white"
               font.pixelSize: 20
               font.italic: true
               anchors.top: speedValue.bottom
               anchors.horizontalCenter: tacho.horizontalCenter
       }
        Item {
            id: tripmeter
            //anchors.bottom: speedValue.top
            //anchors.horizontalCenter: tacho.horizontalCenter
            x:135
            y:80
            property string color: "gray"
            Text{
                   id: distance

                   text: "DISTANCE (km)"
                   font.pointSize: 10
                   color: tripmeter.color
                   font.weight: Font.DemiBold
                   anchors.horizontalCenter: zero.horizontalCenter
                            anchors.bottom: zero.top
                 }
            Text{
                    id: zero
                    text: "0000"
                    font.pointSize: 25
                    color: tripmeter.color
                    font.weight: Font.DemiBold
                    //anchors.bottom: parent.speedValue.top
                    //anchors.horizontalCenter: speedValue.horizontalCenter
                   }
            }

    }
    Item{ /*add this "import QtQuick.Shapes 1.15"*/
        id:center
        x:176
        y:176
        Shape {

            id: circle
            anchors.fill: parent
            property real r: 190
            ShapePath {
                strokeColor: "#242424" //white
                strokeWidth: 10
                fillColor: "transparent"
                /*/
                fillGradient: ConicalGradient {
                    angle: -135
                    centerX: 200
                    centerY: 200
                    GradientStop {
                        position: root.currentAngle/225
                        color: "green"
                    }
                    GradientStop {
                        position: 1.0
                        color: "transparent"
                    }
                }
                //*/
                capStyle: ShapePath.RoundCap
                startX: circle.width / 2 - circle.r
                startY: circle.height / 2 - circle.r
                PathAngleArc {
                    centerX: 0//circle.width / 2 + circle.r
                    centerY: 0//circle.height / 2 + circle.r
                    radiusX: circle.r; radiusY: circle.r
                    startAngle: 126
                    sweepAngle: 287
                }}}
        //Do'n touch above


        /*
        Shape {
            id: circle1
            anchors.fill: parent
            property real r: 190
            ShapePath {
                strokeColor: "#DD3761"
                strokeWidth: 10
                fillColor: "transparent"
                capStyle: ShapePath.RoundCap
                startX: circle1.width / 2 - circle1.r
                startY: circle1.height / 2 - circle1.r
                PathAngleArc {
                    centerX: 0//circle.width / 2 + circle.r
                    centerY: 0//circle.height / 2 + circle.r
                    radiusX: circle1.r; radiusY: circle1.r
                    startAngle: 126
                    sweepAngle: 100//valueSource.kph * 1.43
                    //useLargeArc: true
                }}
        } */
    }
}


