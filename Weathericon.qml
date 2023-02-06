//Weathericon.qml
import QtQuick 2.15

Item {
    id: item
    width: 50
    height: 50



   /*
    0: None
    1: sunny
    2: cloudy
    3: rainy
    */
    property int weatherMode: 1

    property string weatherIcon: switch(weatherMode) {
        case 0: weatherIcon: ""; break;
        case 1: weatherIcon: "sunnyIcon"; break;
        case 2: weatherIcon: "cloudyIcon"; break;
        case 3: weatherIcon: "rainyIcon"; break;
    }

   Image {

            source: "qrc:/images/weathericon/" + item.weatherIcon + ".png"
            sourceSize: Qt.size(40, 40)
    }
}
