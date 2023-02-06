// Sign.qml
import QtQuick 2.15



Item {
    width: 100
    height: 100



   /*
    0: None
    13: Speed Limit 30km/h
    14: Speed Limit 40km/h
    15: Speed Limit 50km/h
    */
    property int mode: 15


    property string image: switch(mode) {
        case 0: image: ""; break;
        case 13: image: "limit_30"; break;
        case 14: image: "limit_40"; break;
        case 15: image: "limit_50"; break;
    }



   Image {
            source: "qrc:/images/sign/" + image + ".png"
            sourceSize: Qt.size(69, 69)
    }
}
