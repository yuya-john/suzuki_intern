/*ValueSource.qml*/
import QtQuick 2.15
Item {
    id: valueSource
    property bool isAccelerated: false
    property real rpm: 0
    property int kph: 0
    readonly property int maxRpm: 10
    readonly property int minRpm: 0
    readonly property int maxKph: 220
    readonly property int minKph: 0
    function accelerate(){
        if (rpm < maxRpm) {rpm += 0.3}else{rpm = maxRpm }
        if(kph < maxKph){ kph += 10}else{ kph = maxKph}
    }
    function decelerate(){
        if (minRpm < rpm) { rpm -= 0.3}else{rpm = minRpm}
        if(minKph < kph){kph -= 10}else{kph = minKph}
    }
    Timer{
        interval: 100;
        running: true
        repeat: true;
        onTriggered: {
            if(isAccelerated)
              accelerate();
else
              decelerate();
        }
    }
    focus: meterfocus






    Keys.onPressed: {
        if(event.key === Qt.Key_A){
            isAccelerated = true;
        }
        //tuika
        if(event.key === Qt.Key_Underscore  || Qt.Key_Plus){
            fuelfocus = true
            meterfocus = false
        } //kokomade
}
    Keys.onReleased: {
        if(event.key === Qt.Key_A){
            isAccelerated = false;
        }
} }
