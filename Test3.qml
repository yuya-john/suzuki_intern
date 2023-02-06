import QtQuick 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.12


Item{
    width: 338
    height: 342


    Shape {
        id: circle1
        anchors.fill: parent
        property real r: 190
        z: 100
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
                sweepAngle: 180//valueSource.kph * 1.43
                //useLargeArc: true
            }}
    }

}

