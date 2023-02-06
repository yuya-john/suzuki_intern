import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.0
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.12

import "qrc:/qml/sign"
import "qrc:/qml/weather"
import "qrc:/qml/footer"
import "qrc:/qml/music"
import "qrc:/qml/header"
import "qrc:/qml/tripmeter"
import "qrc:/meter"




Window {
    //tuika
    property bool fuelfocus: false
    property bool meterfocus: true
    //kokomade

    width: 960
    height: 540
    visible: true
    title: qsTr("Instrument Panel")
    color: "black"




    Meter{
        focus: true
        x:180
        y:132
    }

    Test3{
        Test2{}
    }


    Test3{
        x:180 +176
        y:132 +176
    }


    Temperature{
        x:90
        y:25
    }
    Fuelgauge {
        opacity: 0.8
        x:320
        y:429
    }
    onActiveFocusItemChanged: print("activeFocusItem", activeFocusItem)

    Sign {
        x: 542
        y: 132
    }
    Weathericon {
        x: 32
        y: 23
    }
    Music {
        x: 650
        y: 132
    }
    Footer {
        x: 39
        y: 125
    }
    Header{}
/*
    TripMeter{
        x:500
        y:200
    }
    */

}
