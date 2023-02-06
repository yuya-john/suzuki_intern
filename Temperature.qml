import QtQuick 2.15

Text{
    property int temp: 42
    color: if (30 <= temp) {
        color: "#FFCDD2"
    } else if (temp <= 10) {
        color: "#BBDEFB"
    } else {
        color: "#BDD974"
    }
    font.pointSize: 24
    font.bold: true
    text: temp + "ºC" //+" ☁"
}
