import QtQuick 2.15
import "qrc:/meter"
//fuelgauge icon
Image {
    id: fuelgauge
    property int remainingFuel: 8 //0: Empty - 8: Full


    focus: fuelfocus


    Keys.onPressed: {
        if(event.key === Qt.Key_Plus) {
            if(remainingFuel < 8) {
                remainingFuel ++
            }
        }
        if(event.key === Qt.Key_Underscore) {
            if(0 < remainingFuel) {
                remainingFuel --
            }
        }
        if(event.key === Qt.Key_A){
                    fuelfocus = false
                    meterfocus = true
                }
    }
    Keys.onReleased: {
        if(event.key === Qt.Key_A){
            isAccelerated = false;
        }}

    source: "qrc:/images/fuelgauge/fuel_" + remainingFuel + ".png"
    sourceSize: Qt.size(70,70)
    //x:300
    anchors.horizontalCenter: tacho.horizontalCenter
}
